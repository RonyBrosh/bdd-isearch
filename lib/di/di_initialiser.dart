import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di_initialiser.config.dart';

@injectableInit
Future<void> configureDependencies() async {
  await GetIt.instance.reset();
  GetIt.instance.init();
}

@module
abstract class DioModule {
  @lazySingleton
  Dio dio() {
    final dio = Dio(BaseOptions(baseUrl: 'https://www.google.co'));
    return dio;
  }
}
