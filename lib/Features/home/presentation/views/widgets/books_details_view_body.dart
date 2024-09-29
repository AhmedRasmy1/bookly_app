import '../../../data/model/book_model/book_model.dart';
import 'also_like_list_view.dart';
import 'books_actions.dart';
import 'books_details_section.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 35, right: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BooksDetailsSection(
                  bookModel: bookModel,
                ),
                const SizedBox(height: 41),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BooksAction(
                        onPressed: () {},
                        borderRadius: const BorderRadius.horizontal(
                            left: Radius.circular(15)),
                        backgroundColor: Colors.white,
                        color: Colors.black,
                        txtActionButton: "Free",
                      ),
                      BooksAction(
                        borderRadius: const BorderRadius.horizontal(
                            right: Radius.circular(15)),
                        backgroundColor: const Color(0xffEF8262),
                        color: Colors.white,
                        txtActionButton: "Preview",
                        onPressed: () async {
                          final Uri url =
                              Uri.parse(bookModel.volumeInfo!.previewLink!);
                          if (await canLaunchUrl(url)) {
                            await launchUrl(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You can also like",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
                const SizedBox(height: 14),
                const Expanded(child: AlsoLikeListView()),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
