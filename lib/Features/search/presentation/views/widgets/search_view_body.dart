import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_details.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_image.dart';
import 'package:bookly_app/Features/search/presentation/views/widgets/custom_search.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(kBookDetailsRouteBath);
      },
      child: SizedBox(
        height: context.deviceHeight * 0.16,
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageOfBestSellerItem(
              imageUrl: 'assets/images/test_image.jpg',
            ),
            SizedBox(
              width: 30,
            ),
            DetailsOfBestSellerItem(),
          ],
        ),
      ),
    );
  }
}

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
