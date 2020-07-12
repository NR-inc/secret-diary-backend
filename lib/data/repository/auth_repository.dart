import 'package:secret_diary_backend/data/db/dao/user_dao.dart';
import 'package:secret_diary_backend/data/entity/user_entity.dart';

class AuthRepository {
  final UserDao _userDao;

  AuthRepository(this._userDao);

  Future<UserEntity> createUser(
    String firstName,
    String lastName,
    String email,
    String password,
  ) async {
    _userDao.createUser(null);
  }

  Future<UserEntity> getUserByEmail(String email) async =>
      _userDao.getUserByEmail(email);
}
