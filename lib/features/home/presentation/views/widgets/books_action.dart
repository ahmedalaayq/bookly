import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/helper.dart';
import 'package:bookly/core/utils/size_config.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8.w),
      child: Row(
        spacing: 5,
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99',
              onPressed: () {},
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                bottomLeft: Radius.circular(12),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              fontSize: 20.sp,
              backgroundColor: buttonColor,
              textColor: Colors.white,
              text: 'free preview'.capitalizeEachWord(),
              onPressed: () {},
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
