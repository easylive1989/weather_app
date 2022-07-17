import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WeatherListScreen extends StatelessWidget {
  const WeatherListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
    );
  }
}
