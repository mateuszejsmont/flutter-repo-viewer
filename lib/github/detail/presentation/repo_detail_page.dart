import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:repo_viewer/core/presentation/toasts.dart';
import 'package:repo_viewer/github/core/domain/github_repo.dart';
import 'package:repo_viewer/github/core/presentation/no_results_display.dart';
import 'package:repo_viewer/github/core/shared/providers.dart';
import 'package:shimmer/shimmer.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

part 'readme_css.dart';

class RepoDetailPage extends ConsumerStatefulWidget {
  final GithubRepo repo;
  final _controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted);

  RepoDetailPage({super.key, required this.repo});

  @override
  ConsumerState<RepoDetailPage> createState() => _RepoDetailPageState();
}

class _RepoDetailPageState extends ConsumerState<RepoDetailPage> {
  bool requestStartedLoading = false;
  bool loading = true;

  @override
  void initState() {
    super.initState();

    Future.microtask(
      () => ref
          .read(repoDetailNotifierProvider.notifier)
          .getRepoDetail(widget.repo.fullName),
    );
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(repoDetailNotifierProvider);
    ref.listen(
      repoDetailNotifierProvider,
      (_, state) {
        state.maybeWhen(
          orElse: () {},
          loadSuccess: (repoDetail, _) {
            if (!repoDetail.isFresh) {
              showNoConnectionToast(
                "You're not online, some information may be outdated.",
                context,
              );
            }
          },
        );
      },
    );

    return WillPopScope(
      onWillPop: () async {
        if (state.hasStarredStatusChange) {
          ref
              .read(starredReposNotifierProvider.notifier)
              .getFirstStarredReposPage();
        }
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Hero(
                tag: widget.repo.fullName,
                child: CircleAvatar(
                  backgroundImage: CachedNetworkImageProvider(
                      widget.repo.owner.avatarUrlSmall),
                  radius: 16,
                  backgroundColor: Colors.transparent,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(child: Text(widget.repo.name)),
            ],
          ),
          actions: [
            state.maybeMap(
              orElse: () => Shimmer.fromColors(
                baseColor: Colors.grey.shade400,
                highlightColor: Colors.grey.shade300,
                child: IconButton(
                  icon: const Icon(Icons.star),
                  onPressed: null,
                  disabledColor: Theme.of(context).iconTheme.color,
                ),
              ),
              loadSuccess: (successState) => IconButton(
                onPressed: !successState.repoDetail.isFresh
                    ? null
                    : () {
                        ref
                            .read(repoDetailNotifierProvider.notifier)
                            .switchStarredStatus(
                                successState.repoDetail.entity!);
                      },
                icon: Icon(!successState.repoDetail.isFresh
                    ? MdiIcons.starRemoveOutline
                    : successState.repoDetail.entity?.starred == true
                        ? Icons.star
                        : Icons.star_outline),
              ),
            )
          ],
        ),
        body: state.map(
          inital: (_) => Container(),
          loadInProgress: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          loadSuccess: (_) {
            if (!requestStartedLoading) {
              widget._controller.loadRequest(Uri.dataFromString(
                '''
                          <html>
                          <head>
                          <meta name="viewport" content="width=device-width, initial-scale=1.0">
                          </head>
                          <body>${_.repoDetail.entity?.html}</body>
                          </html>
                          $_githubReadmeCss
                          ''',
                mimeType: 'text/html',
                encoding: utf8,
              ));
              setState(() {
                requestStartedLoading = true;
              });
            }

            if (_.repoDetail.entity == null) {
              return const NoResultsDisplay(
                message:
                    'These are approximately all the details we could find about this repo right now.',
              );
            } else {
              return Column(
                children: [
                  if (loading) const LinearProgressIndicator(),
                  Expanded(
                    child: WebViewWidget(
                      controller: widget._controller
                        ..setNavigationDelegate(NavigationDelegate(
                          onNavigationRequest: (request) {
                            if (request.url.startsWith('data:')) {
                              return NavigationDecision.navigate;
                            } else {
                              url_launcher.launchUrl(Uri.parse(request.url));
                              return NavigationDecision.prevent;
                            }
                          },
                          onPageFinished: (url) {
                            setState(() {
                              loading = false;
                            });
                          },
                        )),
                    ),
                  ),
                ],
              );
            }
          },
          failure: (_) => Center(
            child: Text(_.failure.toString()),
          ),
        ),
      ),
    );
  }
}
