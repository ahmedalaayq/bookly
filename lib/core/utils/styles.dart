import 'package:bookly/core/constants.dart';
import 'package:flutter/widgets.dart';

abstract class Styles {
  Styles._();

  static const textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    fontFamily: gtSectraFine,
  );
  
  static const textStyle30 = TextStyle(
    fontSize: 30,
    fontFamily: gtSectraFine,
  );

  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );

  static const textStyle16 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );
}
