import 'package:flutter/material.dart';
import 'package:repo_viewer/auth/infrastructure/github_authenticator.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AuthorizationPage extends StatefulWidget {
  final Uri authorizationUrl;
  final void Function(Uri redirectUrl) onAuthorizationCodeRedirectAttempt;
  final _controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..clearLocalStorage()
        .then((value) => WebViewCookieManager().clearCookies());

  AuthorizationPage({
    super.key,
    required this.authorizationUrl,
    required this.onAuthorizationCodeRedirectAttempt,
  });

  @override
  State<AuthorizationPage> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  bool requestStartedLoading = false;
  bool loading = true;

  @override
  void initState() {
    super.initState();
    if (!requestStartedLoading) {
      widget._controller.loadRequest(widget.authorizationUrl);
      setState(() {
        requestStartedLoading = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            if (loading) const LinearProgressIndicator(),
            Expanded(
              child: WebViewWidget(
                controller: widget._controller
                  ..setNavigationDelegate(
                    NavigationDelegate(
                      onNavigationRequest: (navReq) {
                        if (navReq.url.startsWith(
                            GithubAuthenticator.redirectUrl.toString())) {
                          widget.onAuthorizationCodeRedirectAttempt(
                              Uri.parse(navReq.url));
                          return NavigationDecision.prevent;
                        }
                        return NavigationDecision.navigate;
                      },
                      onPageStarted: (_) {
                        setState(() {
                          loading = true;
                        });
                      },
                      onPageFinished: (_) {
                        setState(() {
                          loading = false;
                        });
                      },
                    ),
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
