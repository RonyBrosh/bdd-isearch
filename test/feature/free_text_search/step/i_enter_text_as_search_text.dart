import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iEnterTextAsSearchText(
  WidgetTester tester,
  String text,
) async {
  await tester.enterText(find.byType(SearchBar), text);
  await tester.pumpAndSettle();
}
