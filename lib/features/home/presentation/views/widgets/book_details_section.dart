import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../../core/utils/styels.dart';
import '../../../../../core/utils/text_widget.dart';
import 'book_actions.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
 
 final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Get.width * .2),
          child:  CustomBookItem(
            image:
                book.volumeInfo.imageLinks?.thumbnail?? "",
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        textWidget(
            txt: book.volumeInfo.title ?? "", fontsize: 30, fontWeight: FontWeight.bold),
        const SizedBox(
          height: 13,
        ),
        Opacity(
          opacity: .7,
          child: Text(book.volumeInfo.authors?[0] ?? "",
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
         BooksActions(bookModel: book,),
      ],
    );
  }
}
