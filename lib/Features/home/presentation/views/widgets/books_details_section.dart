import 'package:bookly_app/Features/home/presentation/views/widgets/books_details_image.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BooksDetailsImage(),
        SizedBox(height: 32),
        Text(
          "The Jungle Book",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: kGTSectraFine,
          ),
        ),
        SizedBox(height: 13),
        Opacity(
          opacity: .7,
          child: Text(
            "Rudyard Kipling",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              FontAwesomeIcons.solidStar,
              color: Colors.yellow,
              size: 13,
            ),
            SizedBox(width: 3),
            Text(
              "4.8",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(width: 3),
            Text(
              "(1000)",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        ),
      ],
    );
  }
}
