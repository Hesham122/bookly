import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/features/home/data/repos/home_repos_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getit = GetIt.instance;
void setupServiceLocator() {
  getit.registerSingleton<ApiService>(ApiService(Dio()));
  getit
      .registerSingleton<HomeReposImpl>(HomeReposImpl(getit.get<ApiService>()));
}
