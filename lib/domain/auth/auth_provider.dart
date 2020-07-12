import 'dart:async';

import 'package:jaguar_jwt/jaguar_jwt.dart';

class AuthProvider {
  AuthProvider() {
    scheduleBlackListCleaning();
  }

  static const _secret = 'secret';
  static const _issuer = 'user_info';
  static const _audience = ['secret-diary'];

  final blackList = <String>[];
  final cachedDB = <String>[];

  Future<bool> _checkIfExist(
    String email,
    String password,
  ) async {
    final userIndex = cachedDB.indexWhere(
      (emailFromDB) => emailFromDB == email,
    );
    return userIndex != -1;
  }

  Future<String> authorize(
    String email,
    String password,
    AuthType authType,
  ) async {
    final isUserExist = await _checkIfExist(email, password);

    switch (authType) {
      case AuthType.registration:
        if (isUserExist) {
          throw Exception('the user with email $email already exists');
        }
        break;
      case AuthType.login:
        if (!isUserExist) {
          throw Exception('Invalid email or password');
        }
        break;
      default:
        throw Exception('invalid authType: ${authType}');
    }

    final claim = JwtClaim(
      subject: email,
      issuer: _issuer,
      audience: _audience,
    );

    cachedDB.add(email);
    print('authorize subject: ${email}');
    return issueJwtHS256(claim, _secret);
  }

  /// returns email by token if it correct and did not expire
  /// use for not auth requests
  Future<String> getPayload(String token) async {
    if (blackList.indexOf(token) != -1) {
      throw Exception('Invalid authorize token');
    }

    final JwtClaim decClaimSet = verifyJwtHS256Signature(token, _secret);
    decClaimSet.validate(issuer: _issuer, audience: _audience.first);
    print('payload subject: ${decClaimSet.subject}');
    return decClaimSet.subject;
  }

  // todo implement or remove method
  Future<bool> invalidateToken(String token) async {
    final index = blackList.indexOf(token);
    if (index == -1) {
      blackList.add(token);
      return true;
    }
    return false;
  }

  Future scheduleBlackListCleaning() async {
    await Timer.periodic(Duration(days: 1), (timer) {
      blackList.clear();
    });
    return;
  }
}

enum AuthType { registration, login }
