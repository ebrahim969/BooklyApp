import 'package:flutter/material.dart';

import 'best_seller_listview_item.dart';

class BestSellerListViw extends StatelessWidget {
  const BestSellerListViw({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      physics:const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index)
    {
      return  const Padding(
        padding:  EdgeInsets.symmetric(vertical: 10),
        child: BestSellerListViewItem(),
      );
    });
  }
}