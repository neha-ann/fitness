import 'package:fitness/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slider_button/slider_button.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/background.jpg'),
                  fit: BoxFit.cover)),
          child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Fit',
                          style: GoogleFonts.yatraOne(
                              color: Colors.white, fontSize: 100),
                        ),
                        Text(
                          'X',
                          style: GoogleFonts.yatraOne(
                              color: Colors.yellow, fontSize: 100),
                        ),
                      ],
                    ),
                    const Spacer(),
                    SliderButton(
                        action: () {
                          return Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Homepage()));
                        },
                        label: const Text(
                          "Get Started ",
                          style: TextStyle(
                              color: Color(0xff4a4a4a),
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                        icon: const Icon(
                          size: 40,
                          Icons.arrow_circle_right_rounded,
                          color: Colors.black,
                        ))
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
