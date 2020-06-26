///
//  Generated code. Do not modify.
//  source: auth/auth.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'auth.pb.dart' as $0;
export 'auth.pb.dart';

class AuthClient extends $grpc.Client {
  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.LoginResponse>(
      '/auth.Auth/Login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoginResponse.fromBuffer(value));
  static final _$logout =
      $grpc.ClientMethod<$0.LogoutRequest, $0.LogoutResponse>(
          '/auth.Auth/Logout',
          ($0.LogoutRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.LogoutResponse.fromBuffer(value));
  static final _$registration =
      $grpc.ClientMethod<$0.RegistrationRequest, $0.RegistrationResponse>(
          '/auth.Auth/Registration',
          ($0.RegistrationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RegistrationResponse.fromBuffer(value));

  AuthClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.LoginResponse> login($0.LoginRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$login, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.LogoutResponse> logout($0.LogoutRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$logout, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.RegistrationResponse> registration(
      $0.RegistrationRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$registration, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class AuthServiceBase extends $grpc.Service {
  $core.String get $name => 'auth.Auth';

  AuthServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LogoutRequest, $0.LogoutResponse>(
        'Logout',
        logout_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LogoutRequest.fromBuffer(value),
        ($0.LogoutResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.RegistrationRequest, $0.RegistrationResponse>(
            'Registration',
            registration_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RegistrationRequest.fromBuffer(value),
            ($0.RegistrationResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.LoginResponse> login_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.LogoutResponse> logout_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LogoutRequest> request) async {
    return logout(call, await request);
  }

  $async.Future<$0.RegistrationResponse> registration_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RegistrationRequest> request) async {
    return registration(call, await request);
  }

  $async.Future<$0.LoginResponse> login(
      $grpc.ServiceCall call, $0.LoginRequest request);
  $async.Future<$0.LogoutResponse> logout(
      $grpc.ServiceCall call, $0.LogoutRequest request);
  $async.Future<$0.RegistrationResponse> registration(
      $grpc.ServiceCall call, $0.RegistrationRequest request);
}
