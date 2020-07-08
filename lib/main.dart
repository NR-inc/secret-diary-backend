import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:grpc/grpc.dart';
import 'package:secret_diary_backend/secret_diary_backend.dart';

Future<void> main(List<String> args) async {
  await init();
  final server = Server(
    [Injector.getInjector().get<AuthService>()],
    [authInterceptor],
  );
  await server.serve(port: 50051);

  print('Server listening on port ${server.port}...');
}

// ignore: missing_return
Future<void> init() {
  InjectModule();
}

Future<GrpcError> authInterceptor(
  ServiceCall call,
  ServiceMethod method,
) async {
    print(method);
    print(call);
}
