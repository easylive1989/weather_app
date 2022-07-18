import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail_image_network/mocktail_image_network.dart';
import 'package:weather_app/providers/weather_list_provider.dart';
import 'package:weather_app/views/weather_list_item.dart';
import 'package:weather_app/views/weather_list_screen.dart';
import 'package:weather_app/vo/weather_vo.dart';

late List<WeatherVo> weatherList;

void main() {
  testWidgets("open app should show weather list", (tester) async {
    await mockNetworkImages(() async {
      givenWeatherList([
        const WeatherVo(
          countryIcon: "🇼🇸",
          country: "Taiwan",
          city: "Taipei",
          temperature: 38,
          windSpeed: 8.75,
          weatherIcon: "http://openweathermap.org/img/wn/10d@2x.png",
        ),
        const WeatherVo(
          countryIcon: "🇩🇪",
          country: "Germany",
          city: "Berlin",
          temperature: 38,
          windSpeed: 8.75,
          weatherIcon: "http://openweathermap.org/img/wn/10d@2x.png",
        ),
      ]);

      await whenDisplay(tester, const WeatherListScreen());

      thenShouldShow(
        find.byType(WeatherListItem),
        findsNWidgets(2),
      );
    });
  });
}

void thenShouldShow(Finder finder, Matcher matcher) {
  expect(finder, matcher);
}

void givenWeatherList(List<WeatherVo> list) {
  weatherList = list;
}

Future<void> whenDisplay(
  WidgetTester tester,
  Widget child,
) async {
  await tester.pumpWidget(
    ProviderScope(
      overrides: [
        weatherListProvider.overrideWithValue(StateController(weatherList)),
      ],
      child: MaterialApp(home: child),
    ),
  );
}
