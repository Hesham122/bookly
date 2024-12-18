import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'featured_newest_books_state.dart';

class FeaturedNewestBooksCubit extends Cubit<FeaturedNewestBooksState> {
  FeaturedNewestBooksCubit(this.homeRepo) : super(FeaturedNewestBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeatureNewestBooks() async {
    var result = await homeRepo.fetchNewestBooks();
    result.fold((failure) {
      emit(FeaturedNewestBooksFailure(failure.errorMessage));
    }, (newestbooks) {
      emit(FeaturedNewestBooksSuccessful(newestbooks));
    });
  }
}
