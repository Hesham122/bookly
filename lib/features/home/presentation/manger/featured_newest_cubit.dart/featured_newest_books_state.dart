part of 'featured_newest_books_cubit.dart';

sealed class FeaturedNewestBooksState extends Equatable {
  const FeaturedNewestBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturedNewestBooksInitial extends FeaturedNewestBooksState {}

final class FeaturedNewestBooksLoading extends FeaturedNewestBooksState {}

final class FeaturedNewestBooksFailure extends FeaturedNewestBooksState {
  final String errormsg;

  const FeaturedNewestBooksFailure(this.errormsg);
}

final class FeaturedNewestBooksSuccessful extends FeaturedNewestBooksState {
  final List<Book> newestBooks;

  const FeaturedNewestBooksSuccessful(this.newestBooks);
}
