import 'package:bookly_app/extension.dart';
import 'package:flutter/material.dart';

class AlsoLikeItem extends StatelessWidget {
  const AlsoLikeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        height: context.deviceHeight * 0.15,
        width: context.deviceWidth * 0.19,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage('assets/images/test_image.jpg'),
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
          ),
        ),
      ),
    );
  }
}
