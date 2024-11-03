import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.backgroudcolor,
      required this.textcolor,
      this.borderRaduis,
      this.fontsize, this.onpressed});
  final String text;
  final Color backgroudcolor;
  final Color textcolor;
  final BorderRadius? borderRaduis;
  final double? fontsize;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroudcolor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRaduis ?? BorderRadius.circular(12))),
        onPressed: onpressed,
        child: Text(
          text,
          style: Styles.textstyle16.copyWith(
              color: textcolor,
              fontSize: fontsize,
              fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
