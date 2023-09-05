import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'book_details_section.dart';
import 'custom_book_details_app_bar.dart';
import 'simillar_books_list_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SafeArea(
              child: Column(
                children:  [
                 const CustomBookDetaiksAppBar(),
                  BookDetailsSection(book: book,),
                  const Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                 const SimillarBooksListSection(),
                const SizedBox(
                      height: 20,
                    ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
