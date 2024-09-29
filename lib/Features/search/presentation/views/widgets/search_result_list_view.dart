import 'package:bookly_app/Features/search/presentation/views/widgets/search_result.dart';
import 'package:flutter/material.dart';

class ResultSearchListView extends StatelessWidget {
  const ResultSearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 20,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: SearchResult(),
          );
        });
  }
}
