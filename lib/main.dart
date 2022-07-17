import 'package:flutter/material.dart';
import 'package:weather_app/views/weather_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WeatherListScreen(),
    );
  }
}
