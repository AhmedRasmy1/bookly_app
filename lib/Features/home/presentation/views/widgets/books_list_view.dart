import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Core/widget/custom_shimmer_featured_book.dart';
import '../../../../../extension.dart';
import '../../manager/fetured_books_cubit/fetured_books_cubit.dart';
import 'list_view_item.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeturedBooksCubit, FeturedBooksState>(
      builder: (context, state) {
        if (state is FeturedBooksSuccess) {
          final data = state.books;
          return SizedBox(
            height: context.deviceHeight * 0.30, //! responsive height
            child: ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return CustomListViewItem(
                  imageUrl: data[index].volumeInfo!.imageLinks!.thumbnail,
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          );
        }
        if (state is FeturedBooksFailure) {
          return CustomShimmer(
            height: context.deviceHeight * 0.30,
            width: context.deviceWidth * 0.5,
          );
        }

        return CustomShimmer(
          height: context.deviceHeight * 0.30,
          width: context.deviceWidth * 0.5,
        );
      },
    );
  }
}
