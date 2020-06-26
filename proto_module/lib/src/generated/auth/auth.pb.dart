///
//  Generated code. Do not modify.
//  source: auth/auth.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'auth.pbenum.dart';

export 'auth.pbenum.dart';

class LoginRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LoginRequest', package: const $pb.PackageName('auth'), createEmptyInstance: create)
    ..aOS(1, 'email')
    ..aOS(2, 'password')
    ..e<SocialAuthType>(3, 'socialAuthType', $pb.PbFieldType.OE, protoName: 'socialAuthType', defaultOrMaker: SocialAuthType.UNKNOWN, valueOf: SocialAuthType.valueOf, enumValues: SocialAuthType.values)
    ..aOS(4, 'socialAuthToken', protoName: 'socialAuthToken')
    ..hasRequiredFields = false
  ;

  LoginRequest._() : super();
  factory LoginRequest() => create();
  factory LoginRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LoginRequest clone() => LoginRequest()..mergeFromMessage(this);
  LoginRequest copyWith(void Function(LoginRequest) updates) => super.copyWith((message) => updates(message as LoginRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginRequest create() => LoginRequest._();
  LoginRequest createEmptyInstance() => create();
  static $pb.PbList<LoginRequest> createRepeated() => $pb.PbList<LoginRequest>();
  @$core.pragma('dart2js:noInline')
  static LoginRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginRequest>(create);
  static LoginRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get email => $_getSZ(0);
  @$pb.TagNumber(1)
  set email($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEmail() => $_has(0);
  @$pb.TagNumber(1)
  void clearEmail() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get password => $_getSZ(1);
  @$pb.TagNumber(2)
  set password($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPassword() => $_has(1);
  @$pb.TagNumber(2)
  void clearPassword() => clearField(2);

  @$pb.TagNumber(3)
  SocialAuthType get socialAuthType => $_getN(2);
  @$pb.TagNumber(3)
  set socialAuthType(SocialAuthType v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSocialAuthType() => $_has(2);
  @$pb.TagNumber(3)
  void clearSocialAuthType() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get socialAuthToken => $_getSZ(3);
  @$pb.TagNumber(4)
  set socialAuthToken($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSocialAuthToken() => $_has(3);
  @$pb.TagNumber(4)
  void clearSocialAuthToken() => clearField(4);
}

class LoginResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LoginResponse', package: const $pb.PackageName('auth'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..hasRequiredFields = false
  ;

  LoginResponse._() : super();
  factory LoginResponse() => create();
  factory LoginResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LoginResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LoginResponse clone() => LoginResponse()..mergeFromMessage(this);
  LoginResponse copyWith(void Function(LoginResponse) updates) => super.copyWith((message) => updates(message as LoginResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LoginResponse create() => LoginResponse._();
  LoginResponse createEmptyInstance() => create();
  static $pb.PbList<LoginResponse> createRepeated() => $pb.PbList<LoginResponse>();
  @$core.pragma('dart2js:noInline')
  static LoginResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LoginResponse>(create);
  static LoginResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class LogoutRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LogoutRequest', package: const $pb.PackageName('auth'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..hasRequiredFields = false
  ;

  LogoutRequest._() : super();
  factory LogoutRequest() => create();
  factory LogoutRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogoutRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LogoutRequest clone() => LogoutRequest()..mergeFromMessage(this);
  LogoutRequest copyWith(void Function(LogoutRequest) updates) => super.copyWith((message) => updates(message as LogoutRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogoutRequest create() => LogoutRequest._();
  LogoutRequest createEmptyInstance() => create();
  static $pb.PbList<LogoutRequest> createRepeated() => $pb.PbList<LogoutRequest>();
  @$core.pragma('dart2js:noInline')
  static LogoutRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogoutRequest>(create);
  static LogoutRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

class LogoutResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LogoutResponse', package: const $pb.PackageName('auth'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  LogoutResponse._() : super();
  factory LogoutResponse() => create();
  factory LogoutResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LogoutResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  LogoutResponse clone() => LogoutResponse()..mergeFromMessage(this);
  LogoutResponse copyWith(void Function(LogoutResponse) updates) => super.copyWith((message) => updates(message as LogoutResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LogoutResponse create() => LogoutResponse._();
  LogoutResponse createEmptyInstance() => create();
  static $pb.PbList<LogoutResponse> createRepeated() => $pb.PbList<LogoutResponse>();
  @$core.pragma('dart2js:noInline')
  static LogoutResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LogoutResponse>(create);
  static LogoutResponse _defaultInstance;
}

class RegistrationRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RegistrationRequest', package: const $pb.PackageName('auth'), createEmptyInstance: create)
    ..aOS(1, 'firstName', protoName: 'firstName')
    ..aOS(2, 'lastName', protoName: 'lastName')
    ..aOS(3, 'email')
    ..aOS(4, 'password')
    ..e<SocialAuthType>(5, 'socialAuthType', $pb.PbFieldType.OE, protoName: 'socialAuthType', defaultOrMaker: SocialAuthType.UNKNOWN, valueOf: SocialAuthType.valueOf, enumValues: SocialAuthType.values)
    ..aOS(6, 'socialAuthToken', protoName: 'socialAuthToken')
    ..hasRequiredFields = false
  ;

  RegistrationRequest._() : super();
  factory RegistrationRequest() => create();
  factory RegistrationRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegistrationRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RegistrationRequest clone() => RegistrationRequest()..mergeFromMessage(this);
  RegistrationRequest copyWith(void Function(RegistrationRequest) updates) => super.copyWith((message) => updates(message as RegistrationRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegistrationRequest create() => RegistrationRequest._();
  RegistrationRequest createEmptyInstance() => create();
  static $pb.PbList<RegistrationRequest> createRepeated() => $pb.PbList<RegistrationRequest>();
  @$core.pragma('dart2js:noInline')
  static RegistrationRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegistrationRequest>(create);
  static RegistrationRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get firstName => $_getSZ(0);
  @$pb.TagNumber(1)
  set firstName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFirstName() => $_has(0);
  @$pb.TagNumber(1)
  void clearFirstName() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get lastName => $_getSZ(1);
  @$pb.TagNumber(2)
  set lastName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastName() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get password => $_getSZ(3);
  @$pb.TagNumber(4)
  set password($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPassword() => $_has(3);
  @$pb.TagNumber(4)
  void clearPassword() => clearField(4);

  @$pb.TagNumber(5)
  SocialAuthType get socialAuthType => $_getN(4);
  @$pb.TagNumber(5)
  set socialAuthType(SocialAuthType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSocialAuthType() => $_has(4);
  @$pb.TagNumber(5)
  void clearSocialAuthType() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get socialAuthToken => $_getSZ(5);
  @$pb.TagNumber(6)
  set socialAuthToken($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSocialAuthToken() => $_has(5);
  @$pb.TagNumber(6)
  void clearSocialAuthToken() => clearField(6);
}

class RegistrationResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RegistrationResponse', package: const $pb.PackageName('auth'), createEmptyInstance: create)
    ..aOS(1, 'token')
    ..hasRequiredFields = false
  ;

  RegistrationResponse._() : super();
  factory RegistrationResponse() => create();
  factory RegistrationResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegistrationResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  RegistrationResponse clone() => RegistrationResponse()..mergeFromMessage(this);
  RegistrationResponse copyWith(void Function(RegistrationResponse) updates) => super.copyWith((message) => updates(message as RegistrationResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RegistrationResponse create() => RegistrationResponse._();
  RegistrationResponse createEmptyInstance() => create();
  static $pb.PbList<RegistrationResponse> createRepeated() => $pb.PbList<RegistrationResponse>();
  @$core.pragma('dart2js:noInline')
  static RegistrationResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegistrationResponse>(create);
  static RegistrationResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);
}

