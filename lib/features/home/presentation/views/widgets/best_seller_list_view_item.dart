import 'package:bookly/core/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    index.isEven
                        ? Assets.testImage2
                        : Assets.testImage3,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    'Harry Potter and the Goblet of Fire',
                    style: Styles.textStyle20.copyWith(
                      fontFamily: gtSectraFine,
                    ),
                  ),
                ),
                const SizedBox(height: 3),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: const Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    'J.k. Rowling',
                    style: Styles.textStyle14,
                  ),
                ),
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '19.99\$',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
