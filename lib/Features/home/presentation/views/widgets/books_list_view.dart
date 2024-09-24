import 'package:bookly_app/Features/home/presentation/views/widgets/list_view_item.dart';
import 'package:flutter/material.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 240,
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return const CustomListViewItem();
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
