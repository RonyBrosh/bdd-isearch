// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/song_by_artist_is_in_the_catalogue.dart';
import './step/im_on_the_free_text_search_page.dart';
import './step/the_text_search_is_empty.dart';
import './step/i_cant_search_for_songs.dart';
import './step/i_enter_text_as_search_text.dart';
import './step/i_can_search_for_songs.dart';
import './step/i_search_for_songs.dart';
import './step/im_informed_that_there_were_no_songs_suggestions.dart';
import './step/i_see_songs_suggestions.dart';
import './step/there_is_no_internet_connection.dart';
import './step/im_informed_that_there_was_an_error.dart';

void main() {
  Future<void> bddSetUp(WidgetTester tester) async {
    await songByArtistIsInTheCatalogue(tester);
  }
  group('''Free text search''', () {
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
      await imOnTheFreeTextSearchPage(tester);
      await iEnterTextAsSearchText(tester, 'Night');
      await iSearchForSongs(tester);
      await imInformedThatThereWereNoSongsSuggestions(tester);
    });
    testWidgets('''Matching songs suggestions''', (tester) async {
      await bddSetUp(tester);
      await imOnTheFreeTextSearchPage(tester);
      await iEnterTextAsSearchText(tester);
      await iSearchForSongs(tester);
      await iSeeSongsSuggestions(tester, ['A Day In The Life', 'Things We Said Today', 'Day Dreaming']);
      await iSeeSongsSuggestions(tester, ['A Day In The Life']);
      await iSeeSongsSuggestions(tester, ['A Day In The Life', 'Things We Said Today']);
    });
    testWidgets('''No internet connection''', (tester) async {
      await bddSetUp(tester);
      await imOnTheFreeTextSearchPage(tester);
      await iEnterTextAsSearchText(tester, 'Night');
      await thereIsNoInternetConnection(tester);
      await iSearchForSongs(tester);
      await imInformedThatThereWasAnError(tester);
    });
  });
}
