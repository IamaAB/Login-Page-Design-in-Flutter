import 'package:flutter/material.dart';

class Mytextfiels extends StatelessWidget {
  final controller;
  final String hinttext;

  final bool obscuretext;
  const Mytextfiels({super.key,
  required this.controller,
    required this.hinttext,
    required this.obscuretext

  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 27.0),
      child: TextField(
        // we use controller to acces taht information in the textfield
        controller: controller,
        // obsecure text is boolean we use when we want to hide the paswword in
        obscureText: obscuretext,
        decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(14)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade200),
                borderRadius: BorderRadius.circular(14)
            ),
            fillColor: Colors.grey[200],
            filled: true,
            hintText: hinttext
        ),

      ),
    );

  }
}
