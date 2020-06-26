///
//  Generated code. Do not modify.
//  source: auth/auth.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class SocialAuthType extends $pb.ProtobufEnum {
  static const SocialAuthType UNKNOWN = SocialAuthType._(0, 'UNKNOWN');
  static const SocialAuthType GOOGLE = SocialAuthType._(1, 'GOOGLE');
  static const SocialAuthType FACEBOOK = SocialAuthType._(2, 'FACEBOOK');

  static const $core.List<SocialAuthType> values = <SocialAuthType> [
    UNKNOWN,
    GOOGLE,
    FACEBOOK,
  ];

  static final $core.Map<$core.int, SocialAuthType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SocialAuthType valueOf($core.int value) => _byValue[value];

  const SocialAuthType._($core.int v, $core.String n) : super(v, n);
}

