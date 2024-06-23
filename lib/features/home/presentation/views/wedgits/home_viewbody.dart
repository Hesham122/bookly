import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/custom_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/list_viewfeature.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          SizedBox(
              height: MediaQuery.of(context).size.height * .25,
              child: const ListViewFeatures()),
          const SizedBox(
            height: 50,
          ),
          const Text(
            "BestSeller",
            style: Styles.titlemedium,
          ),
       
        ],
      ),
    );
  }
}


