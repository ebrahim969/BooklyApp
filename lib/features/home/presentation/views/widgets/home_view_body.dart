import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/styels.dart';
import 'custom_app_bar.dart';
import 'package:get/get.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        const CustomAppBar(),
        const BooksListView(),
         SizedBox(height: Get.height * .05,),
        const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 24),
          child: Text("Best Seller", style: Styles.textStyle18,)
        ),
        const BestSellerListViewItem(),
      ],
    );
  }
}
