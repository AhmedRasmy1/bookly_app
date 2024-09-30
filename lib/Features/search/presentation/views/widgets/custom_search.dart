import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key, required this.onSubmitted});
  final Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmitted,
      decoration: InputDecoration(
        enabledBorder: buildOutLineInputBuilder(),
        focusedBorder: buildOutLineInputBuilder(),
        prefixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          size: 20,
        ),
        suffixIcon: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              FontAwesomeIcons.xmark,
              size: 20,
            )),
        hintText: 'Search',
        border: const OutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutLineInputBuilder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)),
      borderSide: BorderSide(color: Colors.grey),
    );
  }
}
