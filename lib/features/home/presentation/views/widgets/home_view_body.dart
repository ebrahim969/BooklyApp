import 'package:bookly_app/features/home/presentation/views/widgets/books_list_view.dart';
import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomAppBar(),
        BooksListView(),
        ],
    );
  }
}






