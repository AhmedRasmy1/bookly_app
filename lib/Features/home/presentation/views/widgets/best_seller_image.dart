import 'package:bookly_app/extension.dart';
import 'package:flutter/material.dart';

class ImageOfBestSellerItem extends StatelessWidget {
  const ImageOfBestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.deviceWidth * 0.2,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage('assets/images/test_image.jpg'),
          fit: BoxFit.fill,
          filterQuality: FilterQuality.high,
        ),
      ),
    );
  }
}
