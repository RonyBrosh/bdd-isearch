import 'package:bdd_isearch/feature/free_text/presentation/generic_error_dialog.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> imInformedThatThereWasAnError(WidgetTester tester) async =>
    expect(find.byType(GenericErrorDialog), findsOneWidget);
