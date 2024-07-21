import 'package:bookly_app/features/home/presentation/views/wedgits/listview_item.dart';
import 'package:flutter/material.dart';

class ListViewFeatures extends StatelessWidget {
  const ListViewFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: ListViewItem(),
        );
      },
    );
  }
}
