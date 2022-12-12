import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tests/ui/home/viewModel/home_view_model.dart';
import 'package:integration_test/integration_test.dart';
import 'package:flutter_tests/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  testWidgets("Integration testing", (widgetTester) async {
    app.main();
    await widgetTester.pumpAndSettle();
    final Finder button = find.byIcon(Icons.add);
    for (var k = 0; k < 10; k++) {
      await widgetTester.tap(button);
      await Future.delayed(const Duration(seconds: 1));
    }
    await widgetTester.pumpAndSettle();
    expect(Counter.instance.counterNumber, 10);
  });
}
