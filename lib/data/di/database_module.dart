import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:postgres/postgres.dart';
import 'package:secret_diary_backend/common/di/abstract_module.dart';
import 'package:secret_diary_backend/data/db/dao/user_dao.dart';
import 'package:secret_diary_backend/data/db/sd_data_base.dart';

class DataBaseModule extends AbstractModule {
  static final DataBaseModule _dataBaseModule = DataBaseModule._internal();

  static const _hostDB = 'sd-database';
  static const _portDB = 8743;
  static const _nameDB = 'secret-diary';

  factory DataBaseModule() {
    return _dataBaseModule;
  }

  DataBaseModule._internal();

  @override
  void configure(Injector injector) {
    injector.map(
      (i) => PostgreSQLConnection(
        _hostDB,
        _portDB,
        _nameDB,
      ),
      isSingleton: true,
    );

    injector.map(
      (i) => SDDataBase(i.get()),
      isSingleton: true,
    );

    injector.map<UserDao>((i) => UserDaoImpl(i.get()));
  }
}
