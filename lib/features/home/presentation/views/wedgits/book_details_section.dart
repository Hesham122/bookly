import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/action_button.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/custom_appbar_bookdetails.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/listview_item.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/star_rating.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var cwidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: cwidth * .24, vertical: 5),
          child: const ListViewItem(imgUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVGLLD4zMRyPqE80Lz6etxNFc7c8NVVZQq0g&s",),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          "The Jungle Book",
          style: Styles.textstyle20.copyWith(fontSize: 30),
        ),
        const SizedBox(
          height: 8,
        ),
        const Opacity(
            opacity: .7,
            child: Text("Rudyard Kipling", style: Styles.textstyle18)),
        const SizedBox(
          height: 17,
        ),
        const StarRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 37,
        ),
        const ActionButton(),
      ],
    );
  }
}
