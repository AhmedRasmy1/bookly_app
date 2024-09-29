import 'package:bookly_app/Features/home/presentation/views/widgets/also_like_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_actions.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_details_section.dart';
import 'package:flutter/material.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 35, right: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BooksDetailsSection(),
                SizedBox(height: 41),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BooksAction(
                        borderRadius:
                            BorderRadius.horizontal(left: Radius.circular(15)),
                        backgroundColor: Colors.white,
                        color: Colors.black,
                        txtActionButton: "19.99 €",
                      ),
                      BooksAction(
                        borderRadius:
                            BorderRadius.horizontal(right: Radius.circular(15)),
                        backgroundColor: Color(0xffEF8262),
                        color: Colors.white,
                        txtActionButton: "Free Preview",
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Align(
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
                SizedBox(height: 14),
                Expanded(child: AlsoLikeListView()),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
