import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'inject.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureMainDependencies({required String environment}) async =>
    GetItInjectableX(getIt).init(environment: environment);

abstract class Env {
  static const test = 'test';
  static const dev = 'debug';
  static const production = 'production';
  static const web = 'web';
}

