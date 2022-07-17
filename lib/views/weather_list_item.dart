import 'package:flutter/material.dart';
import 'package:weather_app/views/weather_vo.dart';

class WeatherListItem extends StatelessWidget {
  const WeatherListItem({
    Key? key,
    required this.weather,
  }) : super(key: key);

  final WeatherVo weather;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        side: const BorderSide(color: Colors.black),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 12),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
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
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Expanded(flex: 3, child: Text("Temperature")),
                      Expanded(
                        flex: 5,
                        child: Text(
                          "${weather.temperature} °C",
                          style: const TextStyle(color: Colors.orange),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const Expanded(flex: 3, child: Text("Wind Speed")),
                      Expanded(
                        flex: 5,
                        child: Text(
                          weather.windSpeed.toString(),
                          style: const TextStyle(color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Image.network(weather.weatherIcon),
          ],
        ),
      ),
    );
  }
}
