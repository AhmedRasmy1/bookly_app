import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_price_rating.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';

class DetailsOfBestSellerItem extends StatelessWidget {
  const DetailsOfBestSellerItem({
    super.key,
    required this.bookmodel,
  });
  final BookModel bookmodel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bookmodel.volumeInfo.title.toString(),
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: kGTSectraFine),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            bookmodel.volumeInfo.authors![0],
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.white60),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          PriceAndRatingItem(
            bookModel: bookmodel,
          ),
        ],
      ),
    );
  }
}
