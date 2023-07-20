import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> theTextSearchIsEmpty(WidgetTester tester) async {
  await tester.enterText(find.byType(SearchBar), '');
  await tester.pumpAndSettle();
}
