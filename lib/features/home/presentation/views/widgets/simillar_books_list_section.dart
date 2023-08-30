import 'package:bookly_app/core/utils/styels.dart';
import 'package:flutter/material.dart';

import 'simillar_list_view_books.dart';

class SimillarBooksListSection extends StatelessWidget {
  const SimillarBooksListSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "You can also like",
          style: Styles.textStyle14,
        ),
        SizedBox(
          height: 15,
        ),
        SimillarListViewBooks()
      ],
    );
  }
}