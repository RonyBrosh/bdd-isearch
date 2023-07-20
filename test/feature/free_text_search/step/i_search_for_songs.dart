import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iSearchForSongs(WidgetTester tester) async {
  await tester.tap(find.byType(MaterialButton));
  await tester.pumpAndSettle();
}
