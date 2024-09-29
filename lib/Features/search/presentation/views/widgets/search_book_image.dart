import 'package:bookly_app/extension.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SearchBookImage extends StatelessWidget {
  const SearchBookImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.deviceWidth * 0.23,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
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
    );
  }
}
