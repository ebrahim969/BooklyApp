import 'package:bookly_app/core/utils/text_widget.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_router.dart';
import '../../../../../core/utils/styels.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.book});
 final BookModel book;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetails);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(
          height: 125,
          child: Row(
            children: [
              CustomBookItem(image: book.volumeInfo.imageLinks.thumbnail),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: Get.width * .6,
                      child: textWidget(
                          txt: book.volumeInfo.title!,
                          fontsize: 20,
                          tetxAlign: TextAlign.start),
                    ),
                    const SizedBox(height: 3,),
                    Text(book.volumeInfo.authors![0], style: Styles.textStyle14,),
                   const SizedBox(height: 3,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text("Free", style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                       const BookRateing(mainAxisAlignment: MainAxisAlignment.start,)
                     ],
                   ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


