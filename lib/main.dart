import 'package:grpc/grpc.dart';
import 'package:secret_diary_backend/src/generated/auth/login/login.pbgrpc.dart';

class LoginService extends LoginServiceBase {
  @override
  Future<LoginResponse> login(ServiceCall call, LoginRequest request) async {
    return LoginResponse.create()..token = 'test token';
  }
}

Future<void> main(List<String> args) async {
  final server = Server([LoginService()]);
  await server.serve(port: 50051);
  print('Server listening on port ${server.port}...');
}
