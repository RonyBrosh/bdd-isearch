import 'dart:convert';

import 'package:bdd_isearch/feature/free_text/domain/model/song.dart';
import 'package:bdd_widget_test/data_table.dart' as bdd;
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:mocked_backend/mocked_backend.dart';

/// Usage: songs in the catalogue
Future<void> songsInTheCatalogue(
    WidgetTester tester, bdd.DataTable dataTable) async {
  final songs = dataTable
      .asMaps()
      .map((element) => Song(title: element['song'], artist: element['artist']))
      .toList();

  var response = jsonEncode(
      songs
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
