import 'package:bookly_app/Features/home/presentation/views/widgets/books_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BooksDetailsView extends StatelessWidget {
  const BooksDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            FontAwesomeIcons.xmark,
            size: 25,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 34),
            child: Icon(
              Icons.shopping_cart_outlined,
              size: 25,
            ),
          )
        ],
      ),
      body: const BooksDetailsViewBody(),
    );
  }
}
