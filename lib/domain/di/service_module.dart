import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:secret_diary_backend/common/di/abstract_module.dart';
import 'package:secret_diary_backend/domain/auth/auth_provider.dart';
import 'package:secret_diary_backend/domain/service/auth/auth_service.dart';

class ServiceModule extends AbstractModule {
  static final ServiceModule _domainModule = ServiceModule._internal();

  factory ServiceModule() {
    return _domainModule;
  }

  ServiceModule._internal();

  @override
  void configure(Injector injector) {
    injector.map(
      (i) => AuthProvider(),
      isSingleton: true,
    );

    injector.map(
      (i) => AuthService(authProvider: i.get()),
      isSingleton: true,
    );
  }
}
