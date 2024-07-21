import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/custom_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/list_view_best_seller.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/list_viewfeature.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              SizedBox(
                  height: MediaQuery.of(context).size.height * .25,
                  child: const ListViewFeatures()),
              const SizedBox(
                height: 51,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "BestSeller",
                  style: Styles.textstyle18,
                ),
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: ListViewBestSeller(),
        )
      ],
    );
  }
}
