
import 'package:bookly_app/features/home/presentation/views/wedgits/bestseller_itemview_done.dart';
import 'package:flutter/material.dart';

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