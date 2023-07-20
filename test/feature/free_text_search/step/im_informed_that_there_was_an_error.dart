import 'package:bdd_isearch/feature/free_text/presentation/generic_error_widget.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> imInformedThatThereWasAnError(WidgetTester tester) async =>
    expect(find.byType(GenericErrorWidget), findsOneWidget);
