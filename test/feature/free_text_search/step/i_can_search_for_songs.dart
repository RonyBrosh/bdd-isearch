import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> iCanSearchForSongs(WidgetTester tester) async {
  final button = tester.widget<MaterialButton>(find.byType(MaterialButton));
  expect(button.onPressed, isNotNull);
}
