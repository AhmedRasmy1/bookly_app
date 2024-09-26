import 'package:bookly_app/Features/home/presentation/views/widgets/also_like_item.dart';
import 'package:bookly_app/extension.dart';
import 'package:flutter/material.dart';

class AlsoLikeListView extends StatelessWidget {
  const AlsoLikeListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: context.deviceHeight * 0.15,
      child: Expanded(
        child: ListView.builder(
            itemCount: 15,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return const AlsoLikeItem();
            }),
      ),
    );
  }
}
