import 'package:grpc/grpc.dart';
import 'package:secret_diary_backend/secret_diary_backend.dart';

Future<void> main(List<String> args) async {
  await init();
  final server = Server([AuthService()]);
  await server.serve(port: 50051);

  print('Server listening on port ${server.port}...');
}

// ignore: missing_return
Future<void> init(){
  InjectModule();
}
