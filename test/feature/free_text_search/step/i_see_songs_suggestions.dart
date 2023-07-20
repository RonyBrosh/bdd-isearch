import 'package:flutter_test/flutter_test.dart';

Future<void> iSeeSongsSuggestions(
  WidgetTester tester,
  List<String> suggestions,
) async {
  for (var tile in suggestions) {
    expect(find.text(tile), findsOneWidget, reason: 'Expected to find $tile');
  }
}
