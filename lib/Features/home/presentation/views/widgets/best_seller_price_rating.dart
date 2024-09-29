import '../../../data/model/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PriceAndRatingItem extends StatelessWidget {
  const PriceAndRatingItem({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Free',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        const Spacer(),
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Colors.yellow,
          size: 14,
        ),
        const SizedBox(
          width: 6.3,
        ),
        Text(
          (bookModel.volumeInfo!.averageRating ?? 0.0).toString(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '(${bookModel.volumeInfo!.ratingsCount ?? 0})',
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Colors.white60,
          ),
        ),
      ],
    );
  }
}
