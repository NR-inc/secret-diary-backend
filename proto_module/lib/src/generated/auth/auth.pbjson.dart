///
//  Generated code. Do not modify.
//  source: auth/auth.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

const SocialAuthType$json = const {
  '1': 'SocialAuthType',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'GOOGLE', '2': 1},
    const {'1': 'FACEBOOK', '2': 2},
  ],
};

const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'socialAuthType', '3': 3, '4': 1, '5': 14, '6': '.auth.SocialAuthType', '10': 'socialAuthType'},
    const {'1': 'socialAuthToken', '3': 4, '4': 1, '5': 9, '10': 'socialAuthToken'},
  ],
};

const LoginResponse$json = const {
  '1': 'LoginResponse',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

const LogoutRequest$json = const {
  '1': 'LogoutRequest',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

const LogoutResponse$json = const {
  '1': 'LogoutResponse',
};

const RegistrationRequest$json = const {
  '1': 'RegistrationRequest',
  '2': const [
    const {'1': 'firstName', '3': 1, '4': 1, '5': 9, '10': 'firstName'},
    const {'1': 'lastName', '3': 2, '4': 1, '5': 9, '10': 'lastName'},
    const {'1': 'email', '3': 3, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 4, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'socialAuthType', '3': 5, '4': 1, '5': 14, '6': '.auth.SocialAuthType', '10': 'socialAuthType'},
    const {'1': 'socialAuthToken', '3': 6, '4': 1, '5': 9, '10': 'socialAuthToken'},
  ],
};

const RegistrationResponse$json = const {
  '1': 'RegistrationResponse',
  '2': const [
    const {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
  ],
};

