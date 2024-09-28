import 'package:bookly_app/Core/widget/custom_error_widget.dart';
import 'package:bookly_app/Core/widget/custom_loading_indicator.dart';
import 'package:bookly_app/Features/home/presentation/manager/newset_books_cubit/newsest_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsestBooksCubit, NewsestBooksState>(
      builder: (context, state) {
        if (state is NewsestBooksSuccess) {
          final data = state.books;
          return ListView.builder(
            itemCount: data.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return BestSellerItem(
                imageUrl: data[index].volumeInfo.imageLinks.thumbnail,
              );
            },
          );
        } else if (state is NewsestBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
