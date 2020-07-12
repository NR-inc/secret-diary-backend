import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:secret_diary_backend/common/di/abstract_module.dart';
import 'package:secret_diary_backend/data/di/database_module.dart';
import 'package:secret_diary_backend/data/di/repository_module.dart';

class DataModule extends AbstractModule {
  static final DataModule _dataModule = DataModule._internal();

  factory DataModule() {
    return _dataModule;
  }

  DataModule._internal();

  @override
  void configure(Injector injector) {
    RepositoryModule().configure(injector);
    DataBaseModule().configure(injector);
  }
}
