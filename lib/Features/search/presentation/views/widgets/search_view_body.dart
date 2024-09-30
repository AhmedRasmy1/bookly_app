import 'package:bookly_app/Features/search/presentation/manager/cubit/serach_books_cubit.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          const Expanded(child: ResultSearchListView()),
        ],
      ),
    );
  }
}
