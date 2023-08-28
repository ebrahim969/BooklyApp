import 'package:flutter/material.dart';
import '../../../../../core/utils/assets.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem ({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(16) ,
          image:const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.testImage))
        ),
      ),
    );
  }
}