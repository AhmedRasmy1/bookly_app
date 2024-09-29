import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBooksDetails extends StatelessWidget {
  const SearchBooksDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'title',
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: kGTSectraFine),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'author',
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.white60),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Spacer(),
          Row(
            children: [
              Text(
                'Free',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              Spacer(),
              Icon(
                FontAwesomeIcons.solidStar,
                color: Colors.yellow,
                size: 14,
              ),
              SizedBox(
                width: 6.3,
              ),
              Text(
                '(4.9)',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 6,
              ),
              Text(
                '(100)',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.white60,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
