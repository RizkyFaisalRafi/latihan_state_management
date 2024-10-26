import 'dart:developer';

import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  static int _counter = 0;

  // Getter untuk mengambil nilai counter
  int get counter => _counter;

  // Setter untuk mengubah nilai counter dengan notifikasi perubahan
  set counter(int value) {
    log('Didalam Provider');
    if (value >= 0) {
      _counter = value;
      notifyListeners(); // Memberitahu listener ketika ada perubahan
    }
  }

  // Fungsi tambahan untuk menambah counter
  void increment() {
    log('Increment di dalam provider');
    counter++;
  }

  void decrement() {
    log('Decremenet di dalam provider');
    counter--;
  }
}
