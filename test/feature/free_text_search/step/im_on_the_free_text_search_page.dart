import 'package:bdd_isearch/feature/free_text/presentation/free_text_search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> imOnTheFreeTextSearchPage(WidgetTester tester) async {
  await tester.pumpWidget(
    const MaterialApp(
      home: FreeTextSearchPage(),
    ),
  );
}
