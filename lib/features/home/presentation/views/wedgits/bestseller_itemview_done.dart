import 'package:bookly_app/core/utils/router_page.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/listview_item.dart';
import 'package:bookly_app/features/home/presentation/views/wedgits/rating_row.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key, required this.bookModel});

  final Book bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RouterPag.bookDetailsView);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            SizedBox(
                height: 125,
                child: ListViewItem(
                    imgUrl: bookModel.volumeInfo.imageLinks.smallThumbnail)
               
                ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title.toString(),
                      style: Styles.textstyle20,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(bookModel.volumeInfo.authors![0].toString(),
                      style:
                          Styles.textstyle14.copyWith(color: Colors.white70)),
                  const SizedBox(
                    height: 8,
                  ),
                  const RatingRow()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
