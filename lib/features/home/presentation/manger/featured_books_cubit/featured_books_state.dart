part of 'featured_books_cubit.dart';

sealed class FeaturedBooksState extends Equatable {
  const FeaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksFailure extends FeaturedBooksState {
  final String errormsg;

  const FeaturedBooksFailure(this.errormsg);
}

final class FeaturedBooksSuccessful extends FeaturedBooksState {
  final List<Book> successBooks;
  const FeaturedBooksSuccessful(this.successBooks);
}
