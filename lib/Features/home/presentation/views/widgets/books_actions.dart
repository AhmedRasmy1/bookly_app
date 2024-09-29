import 'package:flutter/material.dart';

import 'custom_buttom.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
    required this.borderRadius,
    required this.backgroundColor,
    required this.color,
    required this.txtActionButton,
    required this.onPressed,
  });

  final BorderRadiusGeometry borderRadius;
  final Color? backgroundColor;
  final Color? color;
  final String txtActionButton;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: CustomBottom(
        backgroundColor: backgroundColor,
        borderRadius: borderRadius,
        color: color,
        txtActionButton: txtActionButton,
        onPressed: onPressed,
      ),
    );
  }
}
