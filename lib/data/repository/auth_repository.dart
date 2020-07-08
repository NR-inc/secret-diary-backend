import 'package:secret_diary_backend/data/entity/user_entity.dart';

class AuthRepository {


  Future<UserEntity> createUser(
    String firstName,
    String lastName,
    String email,
    String password,
  ) async {

  }

  Future<UserEntity> getUserByEmail(String email) async {

  }
}
