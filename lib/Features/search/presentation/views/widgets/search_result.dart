import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_book_details.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_book_image.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({
    super.key,
    required this.bookModel,
  });
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(kBookDetailsRouteBath);
      },
      child: SizedBox(
        height: context.deviceHeight * 0.16,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBookImage(
              imageUrl: (bookModel.volumeInfo!.imageLinks?.thumbnail) ?? '',
            ),
            const SizedBox(
              width: 30,
            ),
            SearchBooksDetails(
              bookModel: bookModel,
            )
          ],
        ),
      ),
    );
  }
}
