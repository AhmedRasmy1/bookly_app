import 'package:flutter/material.dart';

import '../../../../../extension.dart';

class BooksDetailsImage extends StatelessWidget {
  const BooksDetailsImage({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.deviceWidth * 0.42,
      height: context.deviceHeight * 0.3,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.fill,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
