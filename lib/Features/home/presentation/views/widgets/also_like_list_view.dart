import '../../../../../Core/widget/custom_shimmer_featured_book.dart';
import '../../manager/similar_books_cubit/similer_books_cubit.dart';
import 'also_like_item.dart';
import '../../../../../extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlsoLikeListView extends StatelessWidget {
  const AlsoLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilerBooksCubit, SimilerBooksState>(
      builder: (context, state) {
        if (state is SimilerBooksSuccess) {
          return SizedBox(
            height: context.deviceHeight * 0.15,
            child: ListView.builder(
              itemCount: state.books.length,
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                debugPrint(
                    state.books[index].volumeInfo!.imageLinks!.thumbnail);
                return AlsoLikeItem(
                  imageUrl:
                      state.books[index].volumeInfo!.imageLinks!.thumbnail,
                );
              },
            ),
          );
        } else if (state is SimilerBooksFailure) {
          return CustomShimmer(
            height: context.deviceHeight * 0.15,
            width: context.deviceWidth * 0.19,
          );
        } else {
          return CustomShimmer(
            height: context.deviceHeight * 0.15,
            width: context.deviceWidth * 0.19,
          );
        }
      },
    );
  }
}
