import 'package:bookly_app/Features/search/presentation/views/widgets/search_book_details.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_book_image.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(kBookDetailsRouteBath);
      },
      child: SizedBox(
        height: context.deviceHeight * 0.16,
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBookImage(
              imageUrl: 'assets/images/test_image.jpg',
            ),
            SizedBox(
              width: 30,
            ),
            SearchBooksDetails()
          ],
        ),
      ),
    );
  }
}
