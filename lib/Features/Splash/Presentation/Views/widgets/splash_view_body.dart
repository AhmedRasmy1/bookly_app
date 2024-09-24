import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(logo),
        const SizedBox(
          height: 7,
        ),
        Text(
          style: GoogleFonts.kalam(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          "Read Free Books",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
