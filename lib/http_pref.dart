import 'dart:async';

import 'package:flutter/services.dart';

class HttpPref {
  static const MethodChannel _channel =
      const MethodChannel('http_pref');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
