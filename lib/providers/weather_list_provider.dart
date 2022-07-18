import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/vo/weather_vo.dart';

var weatherListProvider = StateProvider<List<WeatherVo>>((ref) {
  return [
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
    const WeatherVo(
      countryIcon: "🇬🇧",
      country: "United Kingdom",
      city: "London",
      temperature: 38,
      windSpeed: 8.75,
      weatherIcon: "http://openweathermap.org/img/wn/10d@2x.png",
    ),
    const WeatherVo(
      countryIcon: "🇺🇸",
      country: "United States",
      city: "New York",
      temperature: 38,
      windSpeed: 8.75,
      weatherIcon: "http://openweathermap.org/img/wn/10d@2x.png",
    ),
  ];
});
