import 'package:bookly_app/core/utils/styels.dart';
import 'package:bookly_app/core/utils/text_widget.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'book_actions.dart';
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
              padding: EdgeInsets.symmetric(horizontal: Get.width * .2),
              child: const CustomBookItem(),
            ),
            const SizedBox(
              height: 32,
            ),
            textWidget(
                txt: "The Jungle Book",
                fontsize: 30,
                fontWeight: FontWeight.bold),
                const SizedBox(
              height: 13,
            ),
            Opacity(
              opacity: .7,
              child: Text("Rudyard Kipling",
                  style: Styles.textStyle18.copyWith(
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic)),
            ),
            const SizedBox(
              height: 20,
            ),
            const BookRateing(mainAxisAlignment:MainAxisAlignment.center ,),
            const SizedBox(height: 20,),
            const BooksActions()
          ],
        ),
      ),
    );
  }
}

