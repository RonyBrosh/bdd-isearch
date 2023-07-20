import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> theTextSearchIsEmpty(WidgetTester tester) async {
  await tester.enterText(find.byKey(const Key('_search_bar_')), '');
  await tester.pumpAndSettle();
}
