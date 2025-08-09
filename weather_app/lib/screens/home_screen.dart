import 'package:flutter/material.dart';
import '../widgets/header.dart';
import '../widgets/forecast_row.dart';
import '../widgets/air_quality.dart';
import '../widgets/sunrise_uv.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2E2E60), Color(0xFF9C2CF3)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const HeaderWidget(),
                const SizedBox(height: 20),
                const ForecastRow(),
                const SizedBox(height: 20),
                const AirQualityBox(),
                const SizedBox(height: 20),
                SunriseUVRow(screenWidth: size.width),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
