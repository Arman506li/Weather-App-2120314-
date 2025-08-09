import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app_iub/widgets/custom_background.dart';
import 'package:weather_app_iub/widgets/highest_weather.dart';

class TodaysWeather extends StatelessWidget {
  const TodaysWeather({super.key});

  @override
  Widget build(BuildContext context) {
    String todaysWeather = "19°";
    return CustomBackground(mainChild: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 35,),
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/sun.png"),
              ),
            ),
          ),
          Text(
            todaysWeather,
            style: GoogleFonts.poppins(
              fontSize: 64,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10,),
          Text(
            "Precipitations",
            style: GoogleFonts.poppins(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 10,),
          Text(
            "Max: 24° Min:18°",
            style: GoogleFonts.poppins(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/house.png"),
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xFF3E2D8F), Color(0xFF9D52AC).withOpacity(0.7)],
                  begin: Alignment.bottomRight,
                  end: Alignment.bottomLeft
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Text(
                      "Today",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      "July 21",
                      style: GoogleFonts.poppins(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5,),
                Divider(
                  color: Color(0xFFF7CBFD),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighestWeather(highestWeather: "19°C", time: "15:00", images: "assets/images/sun.png"),
                    HighestWeather(highestWeather: "19°C", time: "15:00", images: "assets/images/sun.png"),
                    HighestWeather(highestWeather: "19°C", time: "15:00", images: "assets/images/sun.png"),
                    HighestWeather(highestWeather: "19°C", time: "15:00", images: "assets/images/sun.png"),

                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
