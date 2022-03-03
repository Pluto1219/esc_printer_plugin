
import 'dart:async';

import 'package:flutter/services.dart';

class EscPrinterPlugin {
  static const MethodChannel _channel = MethodChannel('esc_printer_plugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
