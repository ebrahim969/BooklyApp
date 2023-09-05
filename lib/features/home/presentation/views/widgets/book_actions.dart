import 'package:bookly_app/core/utils/function/launcher_fun.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
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
              launcherCustomUrl(context, bookModel.volumeInfo.previewLink!);
            },
            text: getTxet(bookModel),
            backgroundColor: Colors.amber,
            textColor: Colors.white ,
            borderRadius:const BorderRadius.only(topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
          ),),
      ],
    );
  }
  
 String  getTxet(BookModel bookModel) 
  {
    if((bookModel.volumeInfo.previewLink == null))
    {
      return "Can't preview";
    }
    else
    {
      return"Preview";
    }
  }
}
