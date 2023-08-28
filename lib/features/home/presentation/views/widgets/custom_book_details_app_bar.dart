import 'package:flutter/material.dart';

class CustomBookDetaiksAppBar extends StatelessWidget {
  const CustomBookDetaiksAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.close)),
          IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart_outlined))
        ],
      ),
    );
  }
}