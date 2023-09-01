import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem ({super.key, required this.image});
 
 final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16) ,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(image))
        ),
      ),
    );
  }
}