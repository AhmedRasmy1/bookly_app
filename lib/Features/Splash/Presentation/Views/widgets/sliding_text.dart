import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.animationController,
    required this.slideAnimation,
  });

  final AnimationController animationController;
  final Animation<Offset> slideAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, _) => SlideTransition(
        position: slideAnimation,
        child: Text(
          style: GoogleFonts.kalam(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
          "Read Free Books",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
