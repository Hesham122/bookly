import 'package:bookly_app/features/home/presentation/views/wedgits/listview_item.dart';
import 'package:flutter/material.dart';

class ListViewFeatureDetails extends StatelessWidget {
  const ListViewFeatureDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
          height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
       
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal:8),
            child: ListViewItem(),
          );
        },
      ),
    );
  }
}