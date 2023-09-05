import 'dart:developer';

import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksActions extends StatelessWidget {
  const BooksActions({super.key, required this.bookModel});
  
 final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
         const Expanded(
          child: CustomButton(
            text: "Free",
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          ),),
          Expanded(
          child: CustomButton(
            onPressed: () async
            {
              Uri url = Uri.parse(bookModel.volumeInfo.previewLink!);
             if (await canLaunchUrl(url)) { 
                await launchUrl(url);
              }else
              {
                log("Can't launch url");
              }
            },
            text: "Preview",
            backgroundColor: Colors.amber,
            textColor: Colors.white ,
            borderRadius:const BorderRadius.only(topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
          ),),
      ],
    );
  }
}
