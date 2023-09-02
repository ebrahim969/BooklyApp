import 'package:bookly_app/core/widgets/circular_indecator.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../view_models/newest_books_cubit/newest_books_cubit.dart';
import 'best_seller_listview_item.dart';

class BestSellerListViw extends StatelessWidget {
  const BestSellerListViw({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBooksSuccess)
        {
          return ListView.builder(
            padding: EdgeInsets.zero,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return  Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListViewItem(book: state.books[index],),
              );
            });
        }else if(state is NewestBooksFailure)
        {
           return CustomErrorWidget(errMessage: state.errMessage);
        }else 
        {
            return const CircularIndecator();
        }
      },
    );
  }
}
