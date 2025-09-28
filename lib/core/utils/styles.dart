import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/size_config.dart';
import 'package:flutter/widgets.dart';

abstract class Styles {
  Styles._();

  static final textStyle18 = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeight.w600,
  );
  static final textStyle20 = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeight.normal,
  );

  static final textStyle30 = TextStyle(
    fontSize: 30.sp,
    fontFamily: gtSectraFine,
  );

  static final textStyle14 = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.normal,
  );

  static final textStyle16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
  );
}
