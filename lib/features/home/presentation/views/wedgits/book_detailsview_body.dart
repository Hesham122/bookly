import 'package:bookly_app/features/home/presentation/views/wedgits/custom_appbar_bookdetails.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:SafeArea(child: Column(

        children: [
          CustomAppBarBookDetails()
        ],
      )),
    );
  }
}