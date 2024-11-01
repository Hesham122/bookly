import 'package:flutter/material.dart';

class SearchListView extends StatelessWidget {
  const SearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Text("data");
          // return const BestSellerListViewItem(
          //   imgUrl:"https://encrypted-tbn0.gstatic.com/im
          //   ages?q=tbn:ANd9GcQVGLLD4zMRyPqE80Lz6etxNFc7c8NVVZQq0g&s" ,);
        });
  }
}
