import 'package:flutter/material.dart';
import 'package:repo_viewer/auth/infrastructure/github_authenticator.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AuthorizationPage extends StatefulWidget {
  final Uri authorizationUrl;
  final void Function(Uri redirectUrl) onAuthorizationCodeRedirectAttempt;

  const AuthorizationPage({
    super.key,
    required this.authorizationUrl,
    required this.onAuthorizationCodeRedirectAttempt,
  });

  @override
  State<AuthorizationPage> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WebViewWidget(
          controller: WebViewController()
            ..setJavaScriptMode(JavaScriptMode.unrestricted)
            ..clearLocalStorage()
                .then((value) => WebViewCookieManager().clearCookies())
            ..setNavigationDelegate(
              NavigationDelegate(
                onNavigationRequest: (navReq) {
                  if (navReq.url
                      .startsWith(GithubAuthenticator.redirectUrl.toString())) {
                    widget.onAuthorizationCodeRedirectAttempt(
                        Uri.parse(navReq.url));
                    return NavigationDecision.prevent;
                  }
                  return NavigationDecision.navigate;
                },
              ),
            )
            ..loadRequest(widget.authorizationUrl),
        ),
      ),
    );
  }
}
