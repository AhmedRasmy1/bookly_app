import 'package:bookly_app/Features/home/presentation/views/widgets/also_like_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_actions.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_details_image.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                BooksDetailsImage(),
                SizedBox(height: 32),
                Text(
                  "The Jungle Book",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: kGTSectraFine,
                  ),
                ),
                SizedBox(height: 13),
                Opacity(
                  opacity: .7,
                  child: Text(
                    "Rudyard Kipling",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.solidStar,
                      color: Colors.yellow,
                      size: 13,
                    ),
                    SizedBox(width: 3),
                    Text(
                      "4.8",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 3),
                    Text(
                      "(1000)",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
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
                Expanded(child: SizedBox(height: 50)),
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
                AlsoLikeListView(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
