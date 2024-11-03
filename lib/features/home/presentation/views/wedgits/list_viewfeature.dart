import 'package:bookly_app/core/utils/custom_wedgits/custom_error_widget.dart';
import 'package:bookly_app/core/utils/custom_wedgits/custom_loading_widget.dart';
import 'package:bookly_app/core/utils/router_page.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ListViewFeatures extends StatelessWidget {
  const ListViewFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccessful) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.successBooks.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () => GoRouter.of(context).push(RouterPag.bookDetailsView,
                extra: state.successBooks[index]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ListViewItem(
                    imgUrl:state
                        .successBooks[index].volumeInfo.imageLinks.thumbnail,
                  ),
                ),
              );
            },
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errormsg: state.errormsg);
        } else {
          return const CustomLoadingWidget();
        }
      },
    );
  }
}
