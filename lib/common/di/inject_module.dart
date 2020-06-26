import 'package:flutter_simple_dependency_injection/injector.dart';
import 'package:secret_diary_backend/common/di/abstract_module.dart';
import 'package:secret_diary_backend/data/di/data_module.dart';
import 'package:secret_diary_backend/domain/di/domain_module.dart';

class InjectModule extends AbstractModule {
  static final InjectModule _injectModule = InjectModule._internal();

  factory InjectModule() {
    return _injectModule;
  }

  InjectModule._internal() {
    this.configure(Injector.getInjector());
  }

  @override
  void configure(Injector injector) {
    DataModule().configure(injector);
    DomainModule().configure(injector);
  }
}
