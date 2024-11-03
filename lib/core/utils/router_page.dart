import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repos_impl.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_similar_books/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home.dart';
import 'package:bookly_app/features/search/presentation/view/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class RouterPag {
  static const homeView = "/homeview";
  static const searchView = "/searchview";
  static const bookDetailsView = "/bookDetailsview";
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => const Home(),
      ),
      GoRoute(
        path: bookDetailsView,
        // builder: (context, state) => const BookDetailsView(),
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            key: state.pageKey,
            child: BlocProvider(
              create: (context) => SimilarBooksCubit(getit.get<HomeReposImpl>()),
              child:   BookDetailsView(bookModel: state.extra as Book,),
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
          );
        },
      ),
    ],
  );
}
