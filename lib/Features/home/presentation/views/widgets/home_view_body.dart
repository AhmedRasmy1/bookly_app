import 'package:bookly_app/Features/home/presentation/views/widgets/books_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BooksListView(),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: EdgeInsets.only(left: 18),
          child: Text(
            "Best Saller",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
