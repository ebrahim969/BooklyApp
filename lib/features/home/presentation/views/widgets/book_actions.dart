import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
         Expanded(
          child: CustomButton(
            text: "399",
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          ),),
          Expanded(
          child: CustomButton(
            text: "Free Preview",
            backgroundColor: Colors.amber,
            textColor: Colors.white ,
            borderRadius: BorderRadius.only(topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
          ),),
      ],
    );
  }
}
