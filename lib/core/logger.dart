import 'package:flutter/foundation.dart';

abstract class Logger {
  void errorLog(String message);
  void warningLog(String message);
  void dataLog(dynamic data);
}

class LoggerImpl extends Logger {
  // ANSI colors
  static const String reset = '\x1B[0m';
  static const String red = '\x1B[31m';
  static const String yellow = '\x1B[33m';
  static const String green = '\x1B[32m';
  static const String blue = '\x1B[34m';

  @override
  void errorLog(String message) {
    if (!kReleaseMode) {
      debugPrint("$red❌ ERROR:$reset $message");
    }
  }

  @override
  void warningLog(String message) {
    if (!kReleaseMode) {
      debugPrint("$yellow⚠️ WARNING:$reset $message");
    }
  }

  @override
  void dataLog(dynamic data) {
    if (!kReleaseMode) {
      debugPrint("$green📊 DATA:$reset $data");
    }
  }
}
