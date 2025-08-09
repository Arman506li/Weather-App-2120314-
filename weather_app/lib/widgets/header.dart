import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
          'North America',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(height: 8),
        Icon(Icons.wb_sunny, color: Colors.yellow, size: 60),
        SizedBox(height: 8),
        Text('25°C', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white)),
        Text('Sunny', style: TextStyle(fontSize: 20, color: Colors.white70)),
      ],
    );
  }
}
