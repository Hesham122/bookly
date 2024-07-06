import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "19.99 €",
          style: Styles.textstyle15,
        ),
        const Spacer(),
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color.fromARGB(255, 255, 220, 79),
          size: 16,
        ),
        const SizedBox(
          width: 6,
        ),
        const Text(
          "4.8",
          style: Styles.textstyle16,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          "(2390)",
          style: Styles.textstyle14.copyWith(color: Colors.white54),
        ),
      ],
    );
  }
}
