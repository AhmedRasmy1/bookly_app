import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultSearchPage extends StatelessWidget {
  const DefaultSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 320),
      child: Center(
        child: Text(
          "Still need to search something?",
          style: GoogleFonts.agdasima(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.grey.shade600,
          ),
        ),
      ),
    );
  }
}
