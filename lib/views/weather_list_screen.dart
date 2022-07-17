import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/views/weather_list_item.dart';
import 'package:weather_app/views/weather_vo.dart';

class WeatherListScreen extends StatelessWidget {
  const WeatherListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var weatherList = [
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
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "World Weather",
          style: TextStyle(color: Colors.blue, fontSize: 30, height: 2.5),
        ),
      ),
      body: ListView.builder(
        itemCount: weatherList.length,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
        itemBuilder: (context, index) {
          var weather = weatherList[index];
          return WeatherListItem(weather: weather);
        },
      ),
    );
  }
}
