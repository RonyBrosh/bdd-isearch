import 'package:bdd_isearch/di/di_initialiser.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocked_backend/mocked_backend.dart';

import '../util/free_text_test_data.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  FreeTextTestData.instance.reset();

  await configureDependencies();

  final mockedBackendInterceptor = MockedBackendInterceptor();
  GetIt.instance.registerSingleton(mockedBackendInterceptor);
  final dio = GetIt.instance<Dio>();
  dio.interceptors.add(mockedBackendInterceptor);
}
