import 'package:bookly_app/Features/search/presentation/manager/cubit/serach_books_cubit.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultSearchListView extends StatelessWidget {
  const ResultSearchListView({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SerachBooksCubit, SerachBooksState>(
      builder: (context, state) {
        if (state is SearchBooksLoading) {
        } else if (state is SearchBooksFailure) {
          return Center(
            child: Text(state.errMessage),
          );
        } else if (state is SearchBooksSuccess) {
          return ListView.builder(
            itemCount: state.books.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: SearchResult(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        }
        return Center(
          child: Text(
            "Still need to search something?",
            style: GoogleFonts.agdasima(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.grey.shade600,
            ),
          ),
        );
      },
    );
  }
}
