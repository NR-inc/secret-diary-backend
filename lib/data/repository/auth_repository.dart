import 'package:proto_module/protos.dart';

class AuthRepository {
  Future<String> login(LoginRequest request) async{
    print('login: ${request.writeToJson()}');
    return 'test token';
  }

  Future<String> registration(RegistrationRequest request) async{
    print('registration: ${request.writeToJson()}');
    return 'test token';
  }

  Future<bool> logout(LogoutRequest request) async{
    print('logout: ${request.writeToJson()}');
    return true;
  }
}
