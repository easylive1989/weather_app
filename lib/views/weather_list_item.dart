import 'package:flutter/material.dart';
import 'package:weather_app/vo/weather_vo.dart';

class WeatherListItem extends StatelessWidget {
  const WeatherListItem({
    Key? key,
    required this.weather,
  }) : super(key: key);

  final WeatherVo weather;

  @override
  Widget build(BuildContext context) {
    return _WeatherCard(
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _CityInfo(weather: weather),
                const SizedBox(height: 4),
                _TemperatureInfo(temperature: weather.temperature),
                const SizedBox(height: 4),
                _WindSpeedInfo(windSpeed: weather.windSpeed),
              ],
            ),
          ),
          Image.network(weather.weatherIcon),
        ],
      ),
    );
  }
}

class _WeatherCard extends StatelessWidget {
  const _WeatherCard({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.black),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 12),
        child: child,
      ),
    );
  }
}

class _WindSpeedInfo extends StatelessWidget {
  const _WindSpeedInfo({
    Key? key,
    required this.windSpeed,
  }) : super(key: key);

  final double windSpeed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 3, child: Text("Wind Speed")),
        Expanded(
          flex: 5,
          child: Text(
            windSpeed.toString(),
            style: const TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}

class _TemperatureInfo extends StatelessWidget {
  const _TemperatureInfo({
    Key? key,
    required this.temperature,
  }) : super(key: key);

  final double temperature;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 3, child: Text("Temperature")),
        Expanded(
          flex: 5,
          child: Text(
            "$temperature °C",
            style: const TextStyle(color: Colors.orange),
          ),
        ),
      ],
    );
  }
}

class _CityInfo extends StatelessWidget {
  const _CityInfo({
    Key? key,
    required this.weather,
  }) : super(key: key);

  final WeatherVo weather;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: "${weather.countryIcon} ",
            style: const TextStyle(fontSize: 24),
          ),
          TextSpan(
            text: "${weather.country} / ${weather.city}",
          ),
        ],
      ),
    );
  }
}
