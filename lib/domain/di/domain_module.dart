import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:secret_diary_backend/common/di/abstract_module.dart';

class DomainModule extends AbstractModule {
  static final DomainModule _domainModule = DomainModule._internal();

  factory DomainModule() {
    return _domainModule;
  }

  DomainModule._internal();

  @override
  void configure(Injector injector) {}
}
