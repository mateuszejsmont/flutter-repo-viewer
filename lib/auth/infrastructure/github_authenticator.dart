import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:oauth2/oauth2.dart';

import 'package:repo_viewer/auth/domain/auth_failure.dart';
import 'package:repo_viewer/auth/infrastructure/credentials_storage/credentials_storage.dart';
import 'package:repo_viewer/core/infrastructure/dio_extensions.dart';

import '../../core/shared/encoders.dart';

class GithubOAuthHttpClient extends http.BaseClient {
  final httpClient = http.Client();

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Accept'] = 'application/json';
    return httpClient.send(request);
  }
}

class GithubAuthenticator {
  final CredentialsStorage _credentialsStorage;
  final Dio _dio;

  GithubAuthenticator(this._credentialsStorage, this._dio);

  static const clientId = '0e5b6725a88c9a19d1b8';
  static const clientSecret = 'c3bbd570e38aa2931ae44fb3691e90d4a9c3136d';
  static const scopes = ['read:user', 'repo'];
  static final authorizationEndpoint =
      Uri.parse('https://github.com/login/oauth/authorize');
  static final tokenEndpoint =
      Uri.parse('https://github.com/login/oauth/access_token');
  static final revocationEndpoint =
      Uri.parse('https://api.github.com/applications/$clientId/token');
  static final redirectUrl = Uri.parse('http://localhost:3000/callback');

  Future<Credentials?> getSignedInCredentials() async {
    try {
      final storedCredenials = await _credentialsStorage.read();
      if (storedCredenials != null) {
        if (storedCredenials.canRefresh && storedCredenials.isExpired) {
          final failureOrCredentials = await refresh(storedCredenials);
          return failureOrCredentials.fold(
            (l) => null,
            (r) => r,
          );
        }
      }
      return storedCredenials;
    } on PlatformException {
      return null;
    }
  }

  Future<bool> isSignedIn() =>
      getSignedInCredentials().then((credentials) => credentials != null);

  AuthorizationCodeGrant createGrant() {
    return AuthorizationCodeGrant(
      clientId,
      authorizationEndpoint,
      tokenEndpoint,
      secret: clientSecret,
      httpClient: GithubOAuthHttpClient(),
    );
  }

  Uri getAuthorizationUrl(AuthorizationCodeGrant grant) {
    return grant.getAuthorizationUrl(redirectUrl, scopes: scopes);
  }

  Future<Either<AuthFailure, Unit>> handleAuthorizationResponse(
    AuthorizationCodeGrant grant,
    Map<String, String> queryParams,
  ) async {
    try {
      final httpClient = await grant.handleAuthorizationResponse(queryParams);
      await _credentialsStorage.save(httpClient.credentials);
      return right(unit);
    } on FormatException {
      return left(const AuthFailure.server());
    } on AuthorizationException catch (e) {
      return left(AuthFailure.server('${e.error}: ${e.description}'));
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Unit>> signOut() async {
    final accessToken = await _credentialsStorage
        .read()
        .then((credentials) => credentials?.accessToken);

    final usernameAndPassword =
        stringToBase64.encode('$clientId:$clientSecret');

    try {
      try {
        await _dio.deleteUri(
          revocationEndpoint,
          data: {
            'access_token': accessToken,
          },
          options: Options(headers: {
            'Authorization': 'basic $usernameAndPassword',
          }),
        );
      } on DioError catch (e) {
        if (!e.isNoConnectionError) {
          rethrow;
        }
      }
      await _credentialsStorage.clear();
      return right(unit);
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }

  Future<Either<AuthFailure, Credentials>> refresh(
    Credentials credentials,
  ) async {
    try {
      final refreshedCredentials = await credentials.refresh(
        identifier: clientId,
        secret: clientSecret,
        httpClient: GithubOAuthHttpClient(),
      );
      await _credentialsStorage.save(refreshedCredentials);
      return right(refreshedCredentials);
    } on FormatException {
      return left(const AuthFailure.server());
    } on AuthorizationException catch (e) {
      return left(AuthFailure.server('${e.error}:${e.description}'));
    } on PlatformException {
      return left(const AuthFailure.storage());
    }
  }
}
