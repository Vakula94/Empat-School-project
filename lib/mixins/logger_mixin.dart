import 'package:flutter/foundation.dart';

mixin LoggerMixin {
  void log(String message) {
    debugPrint('LOG: $message');
  }
}
