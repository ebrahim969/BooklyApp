import 'package:bookly_app/core/utils/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styels.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(AssetsData.testImage))),
              ),
            ),
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
                        txt: "Harry Potter and the Goblet of Fire",
                        fontsize: 20,
                        tetxAlign: TextAlign.start),
                  ),
                  const SizedBox(height: 3,),
                 const Text("J.K. Rowling", style: Styles.textStyle14,),
                 const SizedBox(height: 3,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Text("19.99 €", style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                     const BookRateing()
                   ],
                 ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


