import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_details.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/best_seller_image.dart';
import 'package:bookly_app/constants.dart';
import 'package:bookly_app/extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(kBookDetailsRouteBath);
      },
      child: Padding(
        padding:
            const EdgeInsets.only(top: 23, left: 30, right: 30, bottom: 10),
        child: SizedBox(
          height: context.deviceHeight * 0.16,
          child: const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ImageOfBestSellerItem(),
              SizedBox(
                width: 30,
              ),
              DetailsOfBestSellerItem(),
            ],
          ),
        ),
      ),
    );
  }
}
