import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:weather_app/main.dart';

void main() {
  testWidgets('Weather App UI renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(const WeatherApp());

    expect(find.text('North America'), findsOneWidget);
    expect(find.text('7-Days Forecasts'), findsOneWidget);
    expect(find.byIcon(Icons.arrow_back_ios), findsOneWidget);
    expect(find.byIcon(Icons.arrow_forward_ios), findsOneWidget);
  });

  testWidgets('Next arrow changes forecast days', (WidgetTester tester) async {
    await tester.pumpWidget(const WeatherApp());

    final firstDayBefore =
        tester.widget<Text>(find.byType(Text).at(2)).data;

    await tester.tap(find.byIcon(Icons.arrow_forward_ios));
    await tester.pump();

    final firstDayAfter =
        tester.widget<Text>(find.byType(Text).at(2)).data;

    expect(firstDayBefore != firstDayAfter, true);
  });
}
