import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/search/presentation/view/wedgit/custom_search_textfield.dart';
import 'package:bookly_app/features/search/presentation/view/wedgit/search_listview.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 15,
          ),
          Text(
            "Search Result",
            style: Styles.textstyle18,
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(child: SearchListView())
        ],
      ),
    );
  }
}
