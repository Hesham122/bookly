import 'package:flutter/material.dart';

class ListViewItem extends StatelessWidget {
  const ListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.2 / 2,
      child: Container(
        decoration:  BoxDecoration(
          borderRadius: BorderRadius.circular(12),
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVGLLD4zMRyPqE80Lz6etxNFc7c8NVVZQq0g&s"))),
      ),
    );
  }
}
