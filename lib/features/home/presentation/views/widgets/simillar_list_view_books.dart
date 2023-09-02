import 'package:bookly_app/core/widgets/circular_indecator.dart';
import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/features/home/presentation/view_models/cubit/similar_book_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

class SimillarListViewBooks extends StatelessWidget {
  const SimillarListViewBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBookCubit, SimilarBookState>(
      builder: (context, state) {
        if (state is SimilarBookSuccess) {
          return SizedBox(
            height: Get.height * .15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return  CustomBookItem(
                    image:
                        state.book[index].volumeInfo.imageLinks?.thumbnail?? "",
                  );
                }),
          );
        } else if (state is SimilarBookFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else
        {
          return const CircularIndecator();
        }
      },
    );
  }
}
