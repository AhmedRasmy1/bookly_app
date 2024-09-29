import 'package:bookly_app/extension.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerPlaceholder extends StatelessWidget {
  const ShimmerPlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(top: 23, left: 30, right: 30, bottom: 10),
            child: SizedBox(
              height: context.deviceHeight * 0.16,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Placeholder for the image
                  Shimmer.fromColors(
                    baseColor: Colors.grey[800]!,
                    highlightColor: Colors.grey[500]!,
                    child: Container(
                      width: context.deviceWidth * 0.23,
                      height: context.deviceHeight * 0.16,
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                  ),
                  const SizedBox(width: 30),
                  // Placeholder for the text and details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Title placeholder
                        Shimmer.fromColors(
                          baseColor: Colors.grey[800]!,
                          highlightColor: Colors.grey[500]!,
                          child: Container(
                            height: 20,
                            width: context.deviceWidth * 0.4,
                            color: Colors.grey[700],
                          ),
                        ),
                        const SizedBox(height: 5),
                        // Author placeholder
                        Shimmer.fromColors(
                          baseColor: Colors.grey[800]!,
                          highlightColor: Colors.grey[500]!,
                          child: Container(
                            height: 15,
                            width: context.deviceWidth * 0.3,
                            color: Colors.grey[700],
                          ),
                        ),
                        const Spacer(),
                        // Price and Rating placeholder
                        Row(
                          children: [
                            Shimmer.fromColors(
                              baseColor: Colors.grey[800]!,
                              highlightColor: Colors.grey[500]!,
                              child: Container(
                                height: 20,
                                width: context.deviceWidth * 0.1,
                                color: Colors.grey[700],
                              ),
                            ),
                            const Spacer(),
                            Shimmer.fromColors(
                              baseColor: Colors.grey[800]!,
                              highlightColor: Colors.grey[500]!,
                              child: Row(
                                children: [
                                  Container(
                                    height: 20,
                                    width: 20,
                                    color: Colors.grey[700],
                                  ),
                                  const SizedBox(width: 6.3),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    color: Colors.grey[700],
                                  ),
                                  const SizedBox(width: 6),
                                  Container(
                                    height: 15,
                                    width: 30,
                                    color: Colors.grey[700],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
