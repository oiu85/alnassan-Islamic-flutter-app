import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:nassan_app/main.dart';

// This is a utility test file to help with manual responsive testing
// It doesn't contain automated tests but provides a helper for manual verification

void main() {
  // List of test device configurations
  final testDevices = [
    // Mobile devices
    const TestDevice(name: 'Small Phone', width: 320, height: 568),
    const TestDevice(name: 'iPhone SE', width: 375, height: 667),
    const TestDevice(name: 'iPhone 13', width: 390, height: 844),
    const TestDevice(name: 'Pixel 6', width: 411, height: 914),
    // Tablets
    const TestDevice(name: 'iPad Mini', width: 768, height: 1024),
    const TestDevice(name: 'iPad Pro', width: 1024, height: 1366),
    // Large screens
    const TestDevice(name: 'Desktop', width: 1920, height: 1080),
  ];

  // Run test for each device in portrait and landscape
  for (final device in testDevices) {
    testWidgets('Test ${device.name} Portrait', (WidgetTester tester) async {
      // Set portrait size
      tester.binding.window.physicalSizeTestValue = Size(
        device.width,
        device.height,
      );
      
      // Build our app and trigger a frame
      await tester.pumpWidget(const MyApp());
      
      // Allow time for UI to settle (this is for manual verification)
      await tester.pumpAndSettle(const Duration(seconds: 5));
      
      // Note: This test doesn't have assertions as it's designed for manual inspection
      // You would observe the UI in the simulator/emulator and verify visually
    });
    
    testWidgets('Test ${device.name} Landscape', (WidgetTester tester) async {
      // Set landscape size (swap width/height)
      tester.binding.window.physicalSizeTestValue = Size(
        device.height,
        device.width,
      );
      
      // Build our app and trigger a frame
      await tester.pumpWidget(const MyApp());
      
      // Allow time for UI to settle (this is for manual verification)
      await tester.pumpAndSettle(const Duration(seconds: 5));
      
      // Note: This test doesn't have assertions as it's designed for manual inspection
      // You would observe the UI in the simulator/emulator and verify visually
    });
  }
}

// Class to define test device configurations
class TestDevice {
  final String name;
  final double width;
  final double height;

  const TestDevice({
    required this.name,
    required this.width,
    required this.height,
  });
}
