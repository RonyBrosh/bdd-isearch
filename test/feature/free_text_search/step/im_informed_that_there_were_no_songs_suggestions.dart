import 'package:bdd_isearch/feature/free_text/presentation/no_results_widget.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> imInformedThatThereWereNoSongsSuggestions(
        WidgetTester tester) async =>
    expect(find.byType(NoResultsWidget), findsOneWidget);
