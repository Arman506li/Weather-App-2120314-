import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HighestWeather extends StatelessWidget {
  final String highestWeather;
  final String time;
  final String images;
  const HighestWeather({super.key, required this.highestWeather, required this.time, required this.images});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          highestWeather,
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        Container(
          height: 56,
          width: 65,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(images),
            ),
          ),
        ),
        Text(
          time,
          style: GoogleFonts.poppins(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
