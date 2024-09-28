import 'package:bookly_app/Core/widget/custom_error_widget.dart';
import 'package:bookly_app/Core/widget/custom_loading_indicator.dart';
import 'package:bookly_app/Features/home/presentation/manager/fetured_books_cubit/fetured_books_cubit.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/list_view_item.dart';
import 'package:bookly_app/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                  imageUrl: data[index].volumeInfo.imageLinks.thumbnail,
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          );
        }
        if (state is FeturedBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        }

        return const CustomLoadingIndicator();
      },
    );
  }
}
