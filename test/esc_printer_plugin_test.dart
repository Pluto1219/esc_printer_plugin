import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:esc_printer_plugin/esc_printer_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('esc_printer_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await EscPrinterPlugin.platformVersion, '42');
  });
}
