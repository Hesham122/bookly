import 'package:bookly_app/core/utils/custom_wedgits/custom_button.dart';
import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:url_launcher/url_launcher.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key, required this.bookModel});
  final Book bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [ 
        const Expanded(
            child: CustomButton(
          backgroudcolor: Colors.white,
          textcolor: Colors.black,
          text: "19.99€",
          borderRaduis: BorderRadius.only(
              topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
        )),
        Expanded(
            child: CustomButton(
          onpressed: () async {
              Uri _url = Uri.parse(bookModel.volumeInfo.previewLink!);
            if (await canLaunchUrl(_url)) {
              launchUrl(_url);
            }
          },
          fontsize: 16,
          backgroudcolor: const Color(0xffEF8262),
          textcolor: Colors.white,
          text: "Free preview",
          borderRaduis: const BorderRadius.only(
              topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
        )),
      ],
    );
  }
}
