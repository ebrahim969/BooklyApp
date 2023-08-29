import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimillarListViewBooks extends StatelessWidget {
  const SimillarListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * .15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return const CustomBookItem();
          }),
    );
  }
}