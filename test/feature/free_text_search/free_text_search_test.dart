// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import '../free_text_search/util/free_text_test_model.dart';

import 'package:bdd_widget_test/data_table.dart' as bdd;
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_app_is_running.dart';
import './step/im_on_the_free_text_search_page.dart';
import './step/the_text_search_is_empty.dart';
import './step/i_cant_search_for_songs.dart';
import './step/i_enter_text_as_search_text.dart';
import './step/i_can_search_for_songs.dart';
import './step/songs_in_the_catalogue.dart';
import './step/i_search_for_songs.dart';
import './step/im_informed_that_there_were_no_songs_suggestions.dart';
import './step/i_see_songs_suggestions.dart';

void main() {
  group('''Free text search''', () {
    Future<void> bddSetUp(WidgetTester tester) async {
      await theAppIsRunning(tester);
    }
    testWidgets('''Landing on the free text page''', (tester) async {
      await bddSetUp(tester);
      await imOnTheFreeTextSearchPage(tester);
      await theTextSearchIsEmpty(tester);
      await iCantSearchForSongs(tester);
    });
    testWidgets('''Filled search text''', (tester) async {
      await bddSetUp(tester);
      await imOnTheFreeTextSearchPage(tester);
      await iEnterTextAsSearchText(tester, 'Day');
      await iCanSearchForSongs(tester);
    });
    testWidgets('''Empty search text''', (tester) async {
      await bddSetUp(tester);
      await imOnTheFreeTextSearchPage(tester);
      await iEnterTextAsSearchText(tester, 'Day');
      await iEnterTextAsSearchText(tester, '');
      await iCantSearchForSongs(tester);
    });
    testWidgets('''No songs suggestions''', (tester) async {
      await bddSetUp(tester);
      await songsInTheCatalogue(tester, const bdd.DataTable([[song, artist], ['A Day In The Life', 'Beatles'], ['Things We Said Today', 'Beatles'], ['Day Dreaming', 'Aretha Franklin'], ['Rock n Roll', 'Elvis Presly']]));
      await imOnTheFreeTextSearchPage(tester);
      await iEnterTextAsSearchText(tester, 'Night');
      await iSearchForSongs(tester);
      await imInformedThatThereWereNoSongsSuggestions(tester);
    });
    testWidgets('''Outline: Matching songs suggestions ('Day', ['A Day In The Life', 'Things We Said Today', 'Day Dreaming'])''', (tester) async {
      await bddSetUp(tester);
      await songsInTheCatalogue(tester, const bdd.DataTable([[song, artist], ['A Day In The Life', 'Beatles'], ['Things We Said Today', 'Beatles'], ['Day Dreaming', 'Aretha Franklin']]));
      await imOnTheFreeTextSearchPage(tester);
      await iEnterTextAsSearchText(tester, 'Day');
      await iSearchForSongs(tester);
      await iSeeSongsSuggestions(tester, ['A Day In The Life', 'Things We Said Today', 'Day Dreaming']);
    });
    testWidgets('''Outline: Matching songs suggestions ('Day in', ['A Day In The Life'])''', (tester) async {
      await bddSetUp(tester);
      await songsInTheCatalogue(tester, const bdd.DataTable([[song, artist], ['A Day In The Life', 'Beatles'], ['Things We Said Today', 'Beatles'], ['Day Dreaming', 'Aretha Franklin']]));
      await imOnTheFreeTextSearchPage(tester);
      await iEnterTextAsSearchText(tester, 'Day in');
      await iSearchForSongs(tester);
      await iSeeSongsSuggestions(tester, ['A Day In The Life']);
    });
    testWidgets('''Outline: Matching songs suggestions ('Beatles', ['A Day In The Life', 'Things We Said Today'])''', (tester) async {
      await bddSetUp(tester);
      await songsInTheCatalogue(tester, const bdd.DataTable([[song, artist], ['A Day In The Life', 'Beatles'], ['Things We Said Today', 'Beatles'], ['Day Dreaming', 'Aretha Franklin']]));
      await imOnTheFreeTextSearchPage(tester);
      await iEnterTextAsSearchText(tester, 'Beatles');
      await iSearchForSongs(tester);
      await iSeeSongsSuggestions(tester, ['A Day In The Life', 'Things We Said Today']);
    });
  });
}
