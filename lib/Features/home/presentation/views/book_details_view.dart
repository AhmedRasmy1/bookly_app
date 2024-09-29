import 'package:bookly_app/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly_app/Features/home/presentation/manager/similar_books_cubit/similer_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_details_view_body.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/custom_app_bar_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksDetailsView extends StatefulWidget {
  const BooksDetailsView({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  State<BooksDetailsView> createState() => _BooksDetailsViewState();
}

class _BooksDetailsViewState extends State<BooksDetailsView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<SimilerBooksCubit>(context).featchSimilarBooks(
        category: widget.bookModel.volumeInfo!.categories![0]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        title: const AppBarCloseIcon(),
        actions: const [AppBarShoppingIcon()],
      ),
      body: BooksDetailsViewBody(
        bookModel: widget.bookModel,
      ),
    );
  }
}
