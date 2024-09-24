import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, right: 8, left: 8),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.white,
            image: const DecorationImage(
              image: AssetImage('assets/images/test_image.jpg'),
              fit: BoxFit.fill,
              filterQuality: FilterQuality.high,
            )),
      ),
    );
  }
}
