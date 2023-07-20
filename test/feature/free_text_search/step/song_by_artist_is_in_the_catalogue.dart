import 'dart:convert';

import 'package:bdd_isearch/feature/free_text/domain/model/song.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocked_backend/mocked_backend.dart';

List<Song> _catalogue = [];

Future<void> songByArtistIsInTheCatalogue(
  WidgetTester tester,
  String song,
  String artist,
) async {
  if (GetIt.instance.isRegistered<MockedBackendInterceptor>()) {
    GetIt.instance.unregister<MockedBackendInterceptor>();
  }

  _catalogue.add(Song(title: song, artist: artist));
  var response = jsonEncode(_catalogue.map((song) => song.toJson()).toList());

  final mockedBackendInterceptor = MockedBackendInterceptor();
  mockedBackendInterceptor.mockScenario(
    Scenario(
      [
        MockedRequestHandler(
          requestMatcher: RequestMatcherFactory.multiple([
            RequestMatcherFactory.method('GET'),
            RequestMatcherFactory.path('/catalogue'),
          ]),
          isSuccess: true,
          body: response,
        ),
      ],
    ),
  );
}
