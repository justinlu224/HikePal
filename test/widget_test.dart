// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:hikepal/app.dart';

void main() {
  testWidgets('HikePal app splash screen test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const HikePalApp());

    // Verify that our app shows the splash screen initially
    expect(find.text('HikePal'), findsOneWidget);
    expect(find.text('你的登山夥伴'), findsOneWidget);
    expect(find.text('正在初始化...'), findsOneWidget);
    
    // Wait for the splash screen animation and transition
    await tester.pump(const Duration(seconds: 1)); // Animation
    await tester.pump(const Duration(seconds: 3)); // Splash duration
    await tester.pump(const Duration(milliseconds: 500)); // Transition
    
    // Verify that we've navigated to the main page
    expect(find.text('我的登山行程'), findsOneWidget);
    expect(find.text('行程'), findsOneWidget);
    expect(find.text('地圖'), findsOneWidget);
    expect(find.text('紀錄'), findsOneWidget);
    expect(find.text('設定'), findsOneWidget);
  });
}
