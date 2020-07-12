import 'package:grpc/grpc.dart';
import 'package:proto_module/protos.dart';
import 'package:secret_diary_backend/data/repository/auth_repository.dart';
import 'package:secret_diary_backend/domain/auth/auth_provider.dart';

class AuthService extends AuthServiceBase {
  final AuthProvider _authProvider;
  final AuthRepository _authRepository;

  AuthService({AuthProvider authProvider, AuthRepository authRepository})
      : _authProvider = authProvider,
        _authRepository = authRepository;

  @override
  Future<LoginResponse> login(
    ServiceCall call,
    LoginRequest request,
  ) async {
    return LoginResponse.create()
      ..token = await _authProvider.authorize(
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
    await _authRepository.createUser(
        request.firstName, request.lastName, request.email, request.password);
    return RegistrationResponse.create()
      ..token = await _authProvider.authorize(
        request.email,
        request.password,
        AuthType.registration,
      );
    ;
  }
}
