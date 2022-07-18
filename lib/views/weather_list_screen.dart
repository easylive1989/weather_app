import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/providers/weather_list_provider.dart';
import 'package:weather_app/views/weather_list_item.dart';

class WeatherListScreen extends ConsumerWidget {
  const WeatherListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var weatherList = ref.watch(weatherListProvider);
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
