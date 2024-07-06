import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBarBookDetails extends StatelessWidget {
  const CustomAppBarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(Icons.close,size: 25,)),
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.shopping_cart_outlined,size: 25,)),
          ],
        ),
      ),
    );
  }
}