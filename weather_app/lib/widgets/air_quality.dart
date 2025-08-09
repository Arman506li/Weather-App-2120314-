import 'package:flutter/material.dart';

class AirQualityBox extends StatelessWidget {
  const AirQualityBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF3E2D8F), Color(0xFF85179C)],
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
        ),
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        children: [
          const Text(
            "Air Quality",
            style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.normal),
          ),
          const SizedBox(height: 8),
          const Text(
            "3 - Low Health Risk",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(height: 8),
          Container(
            height: 4,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF2E2E60), Color(0xFF9C2CF3)],
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Text("See more                                       >", style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
