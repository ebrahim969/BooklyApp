import 'package:bookly_app/core/utils/text_widget.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_listview_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomAppBar(),
        const BooksListView(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: textWidget(
              txt: "Best Seller", fontsize: 18, fontWeight: FontWeight.w600),
        ),
        const BestSellerListViewItem(),
      ],
    );
  }
}
