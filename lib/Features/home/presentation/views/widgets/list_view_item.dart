import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(bottom: 30, top: 40, left: 30, right: 30),
      height: 224,
      width: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.white,
          image: const DecorationImage(
            image: AssetImage('assets/images/test_image.jpg'),
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
          )),
    );
  }
}
