import 'dart:async';

import 'package:flutter/material.dart';

/// Debounce(duration: Duration).run() で
/// 所定の時間経過後にコールバック関数を発火させる。
class Debounce {
  Debounce({required this.duration});

  final Duration duration;
  Timer? _timer;

  void run(VoidCallback callback) {
    if (_timer?.isActive ?? false) {
      _timer?.cancel();
    }
    _timer = Timer(duration, callback);
  }
}
