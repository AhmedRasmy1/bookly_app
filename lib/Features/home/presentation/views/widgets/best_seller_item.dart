import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_details.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_image.dart';
import 'package:flutter/material.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 23, left: 30, right: 30, bottom: 10),
      child: SizedBox(
        height: 130,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageOfBestSellerItem(),
            SizedBox(
              width: 30,
            ),
            DetailsOfBestSellerItem(),
          ],
        ),
      ),
    );
  }
}
