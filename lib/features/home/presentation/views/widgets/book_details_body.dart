import 'package:flutter/material.dart';

import 'custom_book_details_app_bar.dart';

class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SafeArea(
        child: Column(
          children:const [
              CustomBookDetaiksAppBar()
          ],
        ),
      ),
    );
  }
}

