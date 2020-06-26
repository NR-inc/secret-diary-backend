import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:secret_diary_backend/common/di/abstract_module.dart';
import 'package:secret_diary_backend/data/repository/auth_repository.dart';

class RepositoryModule extends AbstractModule {
  static final RepositoryModule _repositoryModule =
      RepositoryModule._internal();

  factory RepositoryModule() {
    return _repositoryModule;
  }

  RepositoryModule._internal();

  @override
  void configure(Injector injector) {
    injector.map((i) => AuthRepository(), isSingleton: true);
  }
}
