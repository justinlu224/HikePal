// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:hikepal/app.dart';

void main() {
  testWidgets('HikePal app navigation test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const HikePalApp());

    // Verify that our app shows the HikePal title in the first tab
    expect(find.text('HikePal'), findsOneWidget);
    
    // Verify that the bottom navigation is present
    expect(find.text('行程'), findsOneWidget);
    expect(find.text('地圖'), findsOneWidget);
    expect(find.text('紀錄'), findsOneWidget);
    expect(find.text('設定'), findsOneWidget);
    
    // Verify that the first page (trip list) is displayed
    expect(find.text('我的登山行程'), findsOneWidget);
  });
}
