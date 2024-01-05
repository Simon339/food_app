import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:food_app/componets/button.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[600],
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(height: 25),

              //Name of the shop
              Text(
                "SUSHI PLACE",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 25),

              //icon
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Image.asset('images/saba.png'),
              ),

              const SizedBox(height: 10),

              //title
              Text(
                "THE TASTE OF GREATE FOOD",
                style: GoogleFonts.dmSerifDisplay(
                    fontSize: 35, color: Colors.white),
              ),
              //REMOVED
              const SizedBox(height: 25),
              //get started button
              Mybutton(
                text: "Get Started",
                onTap: () {
                  // go to menu page
                  Navigator.pushNamed(context, '/menupage');
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
