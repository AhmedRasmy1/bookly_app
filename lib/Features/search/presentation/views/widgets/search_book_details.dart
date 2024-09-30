import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBooksDetails extends StatelessWidget {
  const SearchBooksDetails({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bookModel.volumeInfo!.title.toString(),
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
            bookModel.volumeInfo!.authors![0],
            style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.white60),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const Spacer(),
          Row(
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
                '(${bookModel.volumeInfo!.ratingsCount})',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.white60,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
