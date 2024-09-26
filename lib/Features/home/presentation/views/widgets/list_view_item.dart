import 'package:bookly_app/constants.dart';
import 'package:bookly_app/extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(kBookDetailsRouteBath);
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 25, left: 11),
        child: Container(
          width: context.deviceWidth * 0.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: Colors.white,
              image: const DecorationImage(
                image: AssetImage('assets/images/test_image.jpg'),
                fit: BoxFit.fill,
                filterQuality: FilterQuality.high,
              )),
        ),
      ),
    );
  }
}
