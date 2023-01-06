import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:repo_viewer/auth/shared/providers.dart';
import 'package:repo_viewer/core/presentation/routes/app_router.gr.dart';
import 'package:repo_viewer/github/core/shared/providers.dart';
import 'package:repo_viewer/github/repos/core/presentation/paginated_repos_list_view.dart';
import 'package:repo_viewer/github/repos/searched_repos/presentation/searched_repos_page.dart';

class StarredReposPage extends ConsumerStatefulWidget {
  const StarredReposPage({super.key});

  @override
  ConsumerState<StarredReposPage> createState() => _StarredReposPageState();
}

class _StarredReposPageState extends ConsumerState<StarredReposPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(starredReposNotifierProvider.notifier).getNextStarredReposPage();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Starred Repos'),
        actions: [
          IconButton(
            icon: const Icon(MdiIcons.logoutVariant),
            onPressed: () {
              ref.read(authNotifierProvider.notifier).signOut();
            },
          ),
          IconButton(
            icon: const Icon(MdiIcons.magnify),
            onPressed: () {
              AutoRouter.of(context)
                  .push(SearchedReposRoute(searchTerm: 'flutter'));
            },
          ),
        ],
      ),
      body: PaginatedReposListView(
        paginatedReposNotifierProvider: starredReposNotifierProvider,
        getNextPage: (ref) => ref
            .read(starredReposNotifierProvider.notifier)
            .getNextStarredReposPage(),
        noResultsMessage:
            "That's about everything we could find in your starred repos right now.",
      ),
    );
  }
}
