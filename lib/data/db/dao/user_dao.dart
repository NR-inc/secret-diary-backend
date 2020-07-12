import 'package:secret_diary_backend/data/db/sd_data_base.dart';
import 'package:secret_diary_backend/data/entity/user_entity.dart';

abstract class UserDao {
  Future<bool> createUser(UserEntity userEntity);

  Future<UserEntity> getUserByEmail(String email);
}

class UserDaoImpl implements UserDao {
  SDDataBase _dataBase;

  UserDaoImpl(this._dataBase);

  @override
  Future<bool> createUser(UserEntity userEntity) async {
    final result = await _dataBase.connection.query('');
    return true;
  }

  @override
  Future<UserEntity> getUserByEmail(String email) async {
    final result = await _dataBase.connection.query('');
    return result.first as UserEntity;
  }
}
