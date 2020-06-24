///
//  Generated code. Do not modify.
//  source: auth/registration/registration.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'registration.pb.dart' as $0;
export 'registration.pb.dart';

class RegistrationClient extends $grpc.Client {
  static final _$registration =
      $grpc.ClientMethod<$0.RegistrationRequest, $0.RegistrationResponse>(
          '/Registration/Registration',
          ($0.RegistrationRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RegistrationResponse.fromBuffer(value));

  RegistrationClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.RegistrationResponse> registration(
      $0.RegistrationRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$registration, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class RegistrationServiceBase extends $grpc.Service {
  $core.String get $name => 'Registration';

  RegistrationServiceBase() {
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

  $async.Future<$0.RegistrationResponse> registration_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RegistrationRequest> request) async {
    return registration(call, await request);
  }

  $async.Future<$0.RegistrationResponse> registration(
      $grpc.ServiceCall call, $0.RegistrationRequest request);
}
