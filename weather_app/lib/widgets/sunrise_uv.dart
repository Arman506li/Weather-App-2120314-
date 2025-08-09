import 'package:flutter/material.dart';

class SunriseUVRow extends StatelessWidget {
  final double screenWidth;
  const SunriseUVRow({super.key, required this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    gradient: const LinearGradient(
    colors: [Color(0xFF3E2D8F), Color(0xFF85179C),],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    ),
    ),

            child: Column(
              children: const [
                Text("Sunrise", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20)),
                SizedBox(height: 8),
                Icon(Icons.wb_sunny, color: Colors.white, size: 30),
                SizedBox(height: 8),
                Text("6:00 AM", style: TextStyle(color: Colors.white,fontSize: 20)),
              ],
            ),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: const LinearGradient(
                  colors: [Color(0xFF85179C), Color(0xFF3E2D8F),],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),

            child: Column(
              children: const [
                Text("UV Index", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20)),
                SizedBox(height: 8),
                Icon(Icons.wb_iridescent, color: Colors.white, size: 30),
                SizedBox(height: 8),
                Text("5 - Moderate", style: TextStyle(color: Colors.white,fontSize: 20)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
