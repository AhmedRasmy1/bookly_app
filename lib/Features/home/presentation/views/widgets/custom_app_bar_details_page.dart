import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class AppBarShoppingIcon extends StatelessWidget {
  const AppBarShoppingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 34),
      child: Icon(
        Icons.shopping_cart_outlined,
        size: 30,
      ),
    );
  }
}

class AppBarCloseIcon extends StatelessWidget {
  const AppBarCloseIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        GoRouter.of(context).pop();
      },
      icon: const Icon(
        FontAwesomeIcons.xmark,
        size: 30,
      ),
    );
  }
}
