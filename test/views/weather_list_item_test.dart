import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:weather_app/views/weather_list_item.dart';
import 'package:weather_app/vo/weather_vo.dart';

main() {
  testWidgets("weather list item have temperature and wind speed",
      (tester) async {
    await mockNetworkImages(() async {
      var weather = const WeatherVo(
        countryIcon: "🇼🇸",
        country: "Taiwan",
        city: "Taipei",
        temperature: 38,
        windSpeed: 8.75,
        weatherIcon: "http://openweathermap.org/img/wn/10d@2x.png",
      );

      await whenDisplay(tester, WeatherListItem(weather: weather));

      thenShouldShow(find.text("38.0 °C"), findsOneWidget);
      thenShouldShow(find.text("8.75"), findsOneWidget);
    });
  });
}

Future<void> whenDisplay(
    WidgetTester tester, WeatherListItem weatherListItem) async {
  await tester.pumpWidget(MaterialApp(home: weatherListItem));
}

void thenShouldShow(Finder finder, Matcher matcher) {
  expect(finder, matcher);
}
