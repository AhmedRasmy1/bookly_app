import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/books_list_view.dart';
import 'package:flutter/material.dart';

class HomeCustomScrollView extends StatelessWidget {
  const HomeCustomScrollView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BooksListView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(left: 18),
                child: Text(
                  "Best Seller",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: BestSellerListView(),
        )
      ],
    );
  }
}
