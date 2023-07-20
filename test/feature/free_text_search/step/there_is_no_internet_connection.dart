import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocked_backend/mocked_backend.dart';

Future<void> thereIsNoInternetConnection(WidgetTester tester) async {
  final mockedBackendInterceptor = GetIt.instance<MockedBackendInterceptor>();
  mockedBackendInterceptor.mockScenario(
    Scenario(
      [
        MockedRequestHandler(
          requestMatcher: RequestMatcherFactory.multiple([
            RequestMatcherFactory.method('GET'),
            RequestMatcherFactory.path('/catalogue'),
          ]),
          isSuccess: false,
        ),
      ],
    ),
  );
}
