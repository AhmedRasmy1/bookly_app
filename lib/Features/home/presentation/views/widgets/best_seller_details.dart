import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_price_rating.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class DetailsOfBestSellerItem extends StatelessWidget {
  const DetailsOfBestSellerItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Harry Potter and the Goblet of Fire",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: kGTSectraFine),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "J.K. Rowling",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.white60),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          PriceAndRatingItem(),
        ],
      ),
    );
  }
}
