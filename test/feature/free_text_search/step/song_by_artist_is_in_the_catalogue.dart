import 'dart:convert';

import 'package:bdd_isearch/feature/free_text/domain/model/song.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocked_backend/mocked_backend.dart';

import '../util/free_text_test_data.dart';

Future<void> songByArtistIsInTheCatalogue(
  WidgetTester tester,
  String song,
  String artist,
) async {
  FreeTextTestData.instance.addSong(Song(title: song, artist: artist));
  var response = jsonEncode(FreeTextTestData.instance
      .getSongs()
      .map((song) => song.toJson())
      .toList());

  final mockedBackendInterceptor = GetIt.instance<MockedBackendInterceptor>();
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
