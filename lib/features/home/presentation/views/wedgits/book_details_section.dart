import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/action_button.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/custom_appbar_bookdetails.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/listview_item.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/star_rating.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final Book bookModel;
  @override
  Widget build(BuildContext context) {
    var cwidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: cwidth * .24, vertical: 5),
          child: ListViewItem(
            imgUrl: bookModel.volumeInfo.imageLinks.thumbnail,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
         bookModel.volumeInfo.title!,
          style: Styles.textstyle20.copyWith(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 8,
        ),
          Opacity(
            opacity: .7,
            child: Text(bookModel.volumeInfo.authors![0], style: Styles.textstyle18)),
        const SizedBox(
          height: 17,
        ),
        const StarRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
          ActionButton(bookModel: bookModel,),
      ],
    );
  }
}
