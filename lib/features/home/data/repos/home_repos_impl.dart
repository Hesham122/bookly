import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeReposImpl implements HomeRepo {
  final ApiService _apiService;

  HomeReposImpl(this._apiService);

  @override
  Future<Either<Failure, List<Book>>> fetchNewestBooks() async {
    try {
      var data = await _apiService.get(
          endpoint:
              'volumes?q=subject:programming&Filtering=free-ebooks&Sorting=newest');
      List<Book> booklists = [];
      for (var item in data['items']) {
        booklists.add(Book.fromJson(item));
      }
      return right(booklists);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() async{
    try {
      var data = await _apiService.get(
          endpoint:
              'volumes?q=subject:programming&Filtering=free-ebooks');
      List<Book> booklists = [];
      for (var item in data['items']) {
        booklists.add(Book.fromJson(item));
      }
      return right(booklists);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
