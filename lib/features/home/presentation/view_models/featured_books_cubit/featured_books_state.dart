part of 'featured_books_cubit.dart';

abstract class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

 class FeaturedBooksInitial extends FeaturedBooksState {}
 class FeaturedBooksLoading extends FeaturedBooksState {}
 class FeaturedBookSuccess extends FeaturedBooksState {
  final List<BookModel> books;

 const FeaturedBookSuccess(this.books);
 }
 class FeaturedBooksFailure extends FeaturedBooksState {
  final String errMessage;

 const FeaturedBooksFailure(this.errMessage);
 }
