// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:hikepal/app.dart';

void main() {
  testWidgets('HikePal app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const HikePalApp());

    // Verify that our app shows the HikePal title
    expect(find.text('HikePal'), findsOneWidget);
    expect(find.text('你的登山夥伴'), findsOneWidget);
  });
}
