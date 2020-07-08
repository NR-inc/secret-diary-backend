import 'package:grpc/grpc.dart';
import 'package:proto_module/protos.dart';
import 'package:secret_diary_backend/domain/auth/auth_provider.dart';

class AuthService extends AuthServiceBase {
  final AuthProvider authProvider;

  AuthService({this.authProvider});

  @override
  Future<LoginResponse> login(
    ServiceCall call,
    LoginRequest request,
  ) async {
    return LoginResponse.create()
      ..token = await authProvider.authorize(
        request.email,
        request.password,
        AuthType.login,
      );
  }

  @override
  Future<LogoutResponse> logout(ServiceCall call, LogoutRequest request) async {
    call.headers['Authorization'];
    return LogoutResponse.create();
  }

  @override
  Future<RegistrationResponse> registration(
    ServiceCall call,
    RegistrationRequest request,
  ) async {
    return RegistrationResponse.create()
      ..token = await authProvider.authorize(
        request.email,
        request.password,
        AuthType.registration,
      );
    ;
  }
}
