import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/bestseller_itemview_done.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 22,
          ),
          enabledBorder: outlinedBorder(),
          focusedBorder: outlinedBorder()),
    );
  }

  OutlineInputBorder outlinedBorder() {
    return const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(11)));
  }
}

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const BestSellerListViewItem();
        });
  }
}
