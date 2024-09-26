import 'package:bookly_app/extension.dart';
import 'package:flutter/material.dart';

class BooksDetailsImage extends StatelessWidget {
  const BooksDetailsImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.deviceWidth * 0.42,
      height: context.deviceHeight * 0.3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage('assets/images/test_image.jpg'),
          fit: BoxFit.fill,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
