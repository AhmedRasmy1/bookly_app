import 'package:bookly_app/Features/home/presentation/views/widgets/books_details_view_body.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_app_bar_details_page.dart';
import 'package:flutter/material.dart';

class BooksDetailsView extends StatelessWidget {
  const BooksDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: const AppBarCloseIcon(),
        actions: const [AppBarShoppingIcon()],
      ),
      body: const BooksDetailsViewBody(),
    );
  }
}
