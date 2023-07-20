import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iEnterTextAsSearchText(
  WidgetTester tester,
  String text,
) async {
  await tester.enterText(find.byKey(const Key('_search_bar_')), text);
  await tester.pumpAndSettle();
}
