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
      body: ListView.builder(
        itemCount: 1,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 18),
        itemBuilder: (context, index) {
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
                        const Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: "🇼🇸 ",
                                style: TextStyle(fontSize: 24),
                              ),
                              TextSpan(text: "Taiwan / Taipei"),
                            ],
                          ),
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: const [
                            Expanded(flex: 3, child: Text("Temperature")),
                            Expanded(
                              flex: 5,
                              child: Text(
                                "38°C",
                                style: TextStyle(color: Colors.orange),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          children: const [
                            Expanded(flex: 3, child: Text("Wind Speed")),
                            Expanded(
                              flex: 5,
                              child: Text(
                                "8.75",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Image.network("http://openweathermap.org/img/wn/10d@2x.png"),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
