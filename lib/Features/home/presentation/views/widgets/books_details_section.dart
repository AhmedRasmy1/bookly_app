import '../../../data/model/book_model/book_model.dart';
import 'books_details_image.dart';
import '../../../../../constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BooksDetailsImage(
          imageUrl: bookModel.volumeInfo!.imageLinks!.thumbnail,
        ),
        const SizedBox(height: 32),
        Text(
          bookModel.volumeInfo!.title.toString(),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: kGTSectraFine,
          ),
        ),
        const SizedBox(height: 13),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo!.authors![0].toString(),
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              FontAwesomeIcons.solidStar,
              color: Colors.yellow,
              size: 13,
            ),
            const SizedBox(width: 3),
            Text(
              (bookModel.volumeInfo!.averageRating ?? 0.0).toString(),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 3),
            Text(
              '(${bookModel.volumeInfo!.ratingsCount ?? 0})',
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ],
    );
  }
}
