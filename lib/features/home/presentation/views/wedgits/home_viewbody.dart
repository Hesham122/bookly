import 'package:bookly_app/features/home/presentation/views/wedgits/custom_appbar.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/list_viewfeature.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   Column(
      children: [const CustomAppBar(), SizedBox(
          height: MediaQuery.of(context).size.height * .25,
     

        child: const ListViewFeatures())],
    );
  }
}


