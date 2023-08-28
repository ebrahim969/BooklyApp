import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SafeArea(
        child: Column(
          children: [
              const CustomBookDetaiksAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:Get.width * .17),
                child:const CustomBookItem(),
              ),
          ],
        ),
      ),
    );
  }
}
