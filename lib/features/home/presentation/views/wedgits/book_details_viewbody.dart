import 'package:bookly_app/features/home/presentation/views/wedgits/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/list_viewfeature_details.dart';

import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                BookDetailsSection(),
                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("You can also like")),
                SizedBox(
                  height: 16,
                ),
                ListViewFeatureDetails(),
                SizedBox(
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
