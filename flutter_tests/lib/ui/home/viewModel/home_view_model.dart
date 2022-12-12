import 'dart:developer';

class Counter {

  Counter._();
  static Counter _counter=Counter._();
  static Counter get instance => _counter;
  int counterNumber = 0;

  increase() {
    counterNumber++;
  }
}
