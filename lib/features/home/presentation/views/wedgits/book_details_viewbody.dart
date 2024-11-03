import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/list_viewfeature_details.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final Book bookModel;
  @override
  Widget build(BuildContext context) {
    return   CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                BookDetailsSection(bookModel:bookModel ,),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("You can also like")),
                const SizedBox(
                  height: 16,
                ),
                const ListViewFeatureDetails(),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
