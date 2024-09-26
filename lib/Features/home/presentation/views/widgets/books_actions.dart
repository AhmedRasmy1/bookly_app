import 'package:bookly_app/Features/home/presentation/views/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction(
      {super.key,
      required this.borderRadius,
      required this.backgroundColor,
      required this.color,
      required this.txtActionButton});

  final BorderRadiusGeometry borderRadius;
  final Color? backgroundColor;
  final Color? color;
  final String txtActionButton;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomBottom(
        backgroundColor: backgroundColor,
        borderRadius: borderRadius,
        color: color,
        txtActionButton: txtActionButton,
      ),
    );
  }
}
