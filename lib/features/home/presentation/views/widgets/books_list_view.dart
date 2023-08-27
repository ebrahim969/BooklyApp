import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        height: Get.height * .3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics:const BouncingScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index){
            return const CustomListViewItem();
          }),
      ),
    );
  }
}