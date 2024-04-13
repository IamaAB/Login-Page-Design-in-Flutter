import 'package:flutter/material.dart';

class square_tile extends StatelessWidget {
  final String imagepath;
  const square_tile({super.key,
  required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.white),
        color: Colors.grey.shade200
      ),
      child: Image.asset(imagepath,
      height: 40,
      ),



    );
  }
}
