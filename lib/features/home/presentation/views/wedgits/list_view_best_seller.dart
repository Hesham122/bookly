import 'package:bookly_app/core/utils/custom_wedgits/custom_error_widget.dart';
import 'package:bookly_app/core/utils/custom_wedgits/custom_loading_widget.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_newest_cubit.dart/featured_newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/bestseller_itemview_done.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewBestSeller extends StatelessWidget {
  const ListViewBestSeller({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedNewestBooksCubit, FeaturedNewestBooksState>(
      builder: (context, state) {
        if (state is FeaturedNewestBooksSuccessful) {
          return ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              itemCount: state.newestBooks.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return BestSellerListViewItem(
                  bookModel: state.newestBooks[index],
               
                );
              });
        } else if (state is FeaturedNewestBooksFailure) {
          return CustomErrorWidget(errormsg: state.errormsg);
        } else {
          return const CustomLoadingWidget();
        }
      },
    );
  }
}
