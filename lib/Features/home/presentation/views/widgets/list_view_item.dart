import 'package:bookly_app/extension.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({
    super.key,
    required this.imageUrl,
  });
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 11),
      child: Container(
        width: context.deviceWidth * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            fit: BoxFit.fill,
            filterQuality: FilterQuality.high,
            errorWidget: (context, url, error) => const Icon(Icons.error),
            placeholder: (context, url) =>
                Image.asset('assets/images/animationn.gif'),
          ),
        ),
      ),
    );
  }
}
