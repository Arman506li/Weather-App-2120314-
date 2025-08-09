import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app_iub/todays_weather.dart';
import 'package:weather_app_iub/widgets/custom_background.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackground(
      mainChild: Column(
        children: [
          Container(
            height: 428,
            width: 428,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/sun.png"),
              ),
            ),
          ),
          SizedBox(height: 50),
          Text(
            "Weather",
            style: GoogleFonts.poppins(
              fontSize: 64,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          Text(
            "Forecast",
            style: GoogleFonts.poppins(
              fontSize: 64,
              color: Color(0xFFDDB130),
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 30),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TodaysWeather()),
              );

            },
            child: Container(
              height: 70,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Color(0xFFDDB130),
              ),
              child: Center(
                child: Text(
                  "Get Start",
                  style: GoogleFonts.openSans(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF362A84),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
