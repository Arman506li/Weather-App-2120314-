import 'package:flutter/material.dart';
import '../models/forecast_model.dart';

class ForecastRow extends StatefulWidget {
  const ForecastRow({super.key});

  @override
  State<ForecastRow> createState() => _ForecastRowState();
}

class _ForecastRowState extends State<ForecastRow> {
  final List<Forecast> forecasts = [
    Forecast("Mon", 25, "Sunny"),
    Forecast("Tue", 28, "Cloudy"),
    Forecast("Wed", 22, "Rainy"),
    Forecast("Thu", 30, "Sunny"),
    Forecast("Fri", 27, "Sunny"),
    Forecast("Sat", 23, "Rainy"),
    Forecast("Sun", 26, "Cloudy"),
  ];

  int startIndex = 0;

  void _nextDays() {
    setState(() {
      if (startIndex < forecasts.length - 4) startIndex++;
    });
  }

  void _prevDays() {
    setState(() {
      if (startIndex > 0) startIndex--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text("7-Days Forecasts", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            IconButton(
              onPressed: _prevDays,
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: forecasts
                    .sublist(startIndex, startIndex + 4)
                    .map((day) => Column(
                  children: [
                    Text(day.day, style: const TextStyle(color: Colors.white,fontSize: 20)),
                    Icon(
                      day.weather == "Sunny"
                          ? Icons.wb_sunny
                          : day.weather == "Rainy"
                          ? Icons.water_drop
                          : Icons.cloud,
                      color: Colors.white,
                    ),
                    Text("${day.temp}°", style: const TextStyle(color: Colors.white,fontSize: 25)),
                  ],
                ))
                    .toList(),
              ),
            ),
            IconButton(
              onPressed: _nextDays,
              icon: const Icon(Icons.arrow_forward_ios, color: Colors.white),
            ),
          ],
        ),
      ],
    );
  }
}
