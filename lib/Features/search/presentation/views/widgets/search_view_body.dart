import 'package:bookly_app/Features/search/presentation/manager/cubit/serach_books_cubit.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_search.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String searchKey = '';
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(
            onSubmitted: (value) {
              searchKey = value;
              BlocProvider.of<SerachBooksCubit>(context)
                  .fetchSearchBooks(searchKey: searchKey);
            },
          ),
          const SizedBox(height: 10),
          const Text(
            "Search Result",
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: BlocBuilder<SerachBooksCubit, SerachBooksState>(
              builder: (context, state) {
                if (searchKey.isNotEmpty) {
                  return const ResultSearchListView();
                } else {
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
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
