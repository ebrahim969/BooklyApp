import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/utils/styels.dart';
import '../../../../../core/utils/text_widget.dart';
import 'book_actions.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * .2),
          child: const CustomBookItem(),
        ),
        const SizedBox(
          height: 32,
        ),
        textWidget(
            txt: "The Jungle Book", fontsize: 30, fontWeight: FontWeight.bold),
        const SizedBox(
          height: 13,
        ),
        Opacity(
          opacity: .7,
          child: Text("Rudyard Kipling",
              style: Styles.textStyle18.copyWith(
                  fontWeight: FontWeight.w500, fontStyle: FontStyle.italic)),
        ),
        const SizedBox(
          height: 20,
        ),
        const BookRateing(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(
          height: 20,
        ),
        const BooksActions(),
      ],
    );
  }
}