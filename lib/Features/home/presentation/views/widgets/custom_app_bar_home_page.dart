import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: IconButton(
        onPressed: () {
          GoRouter.of(context).push(kSerachBooksRouteBath);
        },
        icon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          size: 25,
        ),
      ),
    );
  }
}

class AppBarLogo extends StatelessWidget {
  const AppBarLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Image.asset(
        logo,
        fit: BoxFit.contain,
        filterQuality: FilterQuality.high,
        height: 30,
      ),
    );
  }
}
