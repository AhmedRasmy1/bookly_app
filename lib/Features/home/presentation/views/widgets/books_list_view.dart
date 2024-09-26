import 'package:bookly_app/Features/home/presentation/views/widgets/list_view_item.dart';
import 'package:bookly_app/extension.dart';
import 'package:flutter/material.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.deviceHeight * 0.30, //! responsive height
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
