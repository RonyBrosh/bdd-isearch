// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/im_on_the_free_text_search_screen.dart';
import './step/the_text_search_is_empty.dart';
import './step/i_cant_search_for_songs.dart';
import './step/there_are_no_songs_suggestions_for_text.dart';
import './step/i_enter_text.dart';
import './step/i_search_for_songs.dart';
import './step/im_informed_that_there_were_no_songs_suggestions.dart';
import './step/songs_suggestions_for_text.dart';
import './step/i_enter.dart';
import './step/i_see_suggestions.dart';

void main() {
  Future<void> bddSetUp(WidgetTester tester) async {
    await imOnTheFreeTextSearchScreen(tester);
  }
  group('''Free text search''', () {
    testWidgets('''Empty text search''', (tester) async {
      await bddSetUp(tester);
      await theTextSearchIsEmpty(tester);
      await iCantSearchForSongs(tester);
    });
    testWidgets('''No songs suggestions''', (tester) async {
      await bddSetUp(tester);
      await thereAreNoSongsSuggestionsForText(tester, "A day in life");
      await iEnterText(tester, "A day in life");
      await iSearchForSongs(tester);
      await imInformedThatThereWereNoSongsSuggestions(tester);
    });
    testWidgets('''Matching songs suggestions''', (tester) async {
      await bddSetUp(tester);
      await songsSuggestionsForText(tester, ["A day in life" ,"A day in life LIVE", "A day in life [Bass track]" ], "A day in life");
      await iEnter(tester, "A day in life");
      await iSearchForSongs(tester);
      await iSeeSuggestions(tester, ["A day in life" ,"A day in life LIVE", "A day in life [Bass track]" ]);
    });
  });
}
