import 'package:cached_network_image/cached_network_image.dart';

import '../../../../../extension.dart';
import 'package:flutter/material.dart';

class AlsoLikeItem extends StatelessWidget {
  const AlsoLikeItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        height: context.deviceHeight * 0.15,
        width: context.deviceWidth * 0.19,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          filterQuality: FilterQuality.high,
          errorWidget: (context, url, error) => const Icon(Icons.error),
          placeholder: (context, url) => Center(
            child: Image.asset(
              'assets/images/animationn.gif',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
