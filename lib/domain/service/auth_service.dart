import 'package:grpc/grpc.dart';
import 'package:proto_module/protos.dart';

class AuthService extends AuthServiceBase {
  @override
  Future<LoginResponse> login(ServiceCall call, LoginRequest request) async {
    return LoginResponse.create()..token = 'test token';
  }

  @override
  Future<LogoutResponse> logout(ServiceCall call, LogoutRequest request) {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<RegistrationResponse> registration(ServiceCall call, RegistrationRequest request) {
    // TODO: implement registration
    throw UnimplementedError();
  }
}