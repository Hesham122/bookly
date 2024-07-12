import 'package:bookly_app/core/utils/custom_wedgits/custom_button.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: CustomButton(
          backgroudcolor: Colors.white,
          textcolor: Colors.black,
          text: "19.99€",
          borderRaduis: BorderRadius.only(
              topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
        )),
        Expanded(
            child: CustomButton(
              fontsize: 16,
          backgroudcolor: Color(0xffEF8262),
          textcolor: Colors.white,
          text: "Free preview",
          borderRaduis: BorderRadius.only(
              topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
        )),
      ],
    );
  }
}
