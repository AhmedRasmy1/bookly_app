import 'package:bookly_app/Features/home/presentation/views/widgets/also_like_item.dart';
import 'package:flutter/material.dart';

class AlsoLikeListView extends StatelessWidget {
  const AlsoLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 15,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const AlsoLikeItem();
          }),
    );
  }
}
