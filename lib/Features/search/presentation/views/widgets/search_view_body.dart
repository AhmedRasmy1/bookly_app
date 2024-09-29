import 'package:bookly_app/Features/search/presentation/views/widgets/search_result_list_view.dart';

import 'custom_search.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(height: 10),
          Text(
            "Search Result",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          Expanded(child: ResultSearchListView()),
        ],
      ),
    );
  }
}
