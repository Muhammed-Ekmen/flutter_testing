import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_tests/ui/home/viewModel/home_view_model.dart';

void main() {
  test("checking increse number", () {
    //Config
    Counter.instance.counterNumber = 0;
    //Process
    Counter.instance.increase();
    //Testing
    expect(Counter.instance.counterNumber, 1);
  });
}
