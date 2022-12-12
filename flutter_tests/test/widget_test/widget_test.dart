import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tests/ui/home/view/home.dart';
import 'package:flutter_tests/ui/home/viewModel/home_view_model.dart';

void main() {
  testWidgets("floating action button Testing", (widgetTester) async{
    await widgetTester.pumpWidget(const MaterialApp(home: HomePage()));
    final button = find.byIcon(Icons.add);
    await widgetTester.tap(button);
    await widgetTester.pump();
    expect(Counter.instance.counterNumber, 1);
  });
}
