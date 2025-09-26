import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(FontAwesomeIcons.solidStar, color: Color(0xFFFFDD4F)),
        SizedBox(width: 6.3,),
        Text('4.8', style: Styles.textStyle20),
        SizedBox(width: 5),
        Text('(2390)', style: Styles.textStyle14),
      ],
    );
  }
}
