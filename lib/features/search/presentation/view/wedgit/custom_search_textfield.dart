import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          suffixIcon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 22,
          ),
          enabledBorder: outlinedBorder(),
          focusedBorder: outlinedBorder()),
    );
  }

  OutlineInputBorder outlinedBorder() {
    return const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.all(Radius.circular(11)));
  }
}
