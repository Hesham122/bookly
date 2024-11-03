import 'package:bookly_app/core/utils/custom_wedgits/custom_error_widget.dart';
import 'package:bookly_app/core/utils/custom_wedgits/custom_loading_widget.dart';
import 'package:bookly_app/features/home/presentation/manger/featured_similar_books/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/listview_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewFeatureDetails extends StatelessWidget {
  const ListViewFeatureDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccessful) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.similarBook.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: ListViewItem(
                    imgUrl: state
                        .similarBook[index].volumeInfo.imageLinks.thumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErrorWidget(errormsg: state.errormsg);
        } else {
          return const CustomLoadingWidget();
        }
      },
    );
  }
}
