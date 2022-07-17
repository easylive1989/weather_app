import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
        },
      ),
    );
  }
}
