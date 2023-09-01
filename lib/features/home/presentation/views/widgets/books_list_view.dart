import 'package:bookly_app/core/widgets/circular_indecator.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/view_models/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
         if(state is FeaturedBookSuccess){
          return Padding(
          padding: const EdgeInsets.only(left: 24),
          child: SizedBox(
            height: Get.height * .3,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const CustomBookItem();
                }),
          ),
        );
        }else if(state is FeaturedBooksFailure)
        {
          return  CustomErrorWidget(errMessage: state.errMessage,);
        }else 
        {
          return const CircularIndecator();
        }
      },
    );
  }
}
