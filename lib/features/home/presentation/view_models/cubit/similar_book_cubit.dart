import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'similar_book_state.dart';

class SimilarBookCubit extends Cubit<SimilarBookState> {
  SimilarBookCubit(this.homeRepo) : super(SimilarBookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async
  {
    emit(SimilarBookLoading());
    var result =await homeRepo.fetchSimilarBooks(category: category);
    result.fold((failure) 
    {
      emit(SimilarBookFailure(failure.errorMessage));
    }, (books) {
      emit(SimilarBookSuccess(books));

    });
}
}