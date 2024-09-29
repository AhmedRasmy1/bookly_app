import '../../../data/model/book_model/book_model.dart';
import 'best_seller_details.dart';
import 'best_seller_image.dart';
import '../../../../../constants.dart';
import '../../../../../extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem(
      {super.key, required this.imageUrl, required this.bookModel});
  final String imageUrl;
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(kBookDetailsRouteBath, extra: bookModel);
      },
      child: Padding(
        padding:
            const EdgeInsets.only(top: 23, left: 30, right: 30, bottom: 10),
        child: SizedBox(
          height: context.deviceHeight * 0.16,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageOfBestSellerItem(imageUrl: imageUrl),
              const SizedBox(
                width: 30,
              ),
              DetailsOfBestSellerItem(
                bookmodel: bookModel,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
