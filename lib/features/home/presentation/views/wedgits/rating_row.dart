import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/star_rating.dart';
import 'package:flutter/material.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          "19.99 €",
          style: Styles.textstyle15,
        ),
        Spacer(),
        StarRating()
      ],
    );
  }
}
