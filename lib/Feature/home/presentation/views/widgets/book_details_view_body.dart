import 'package:clean_architecture/Feature/home/presentation/views/widgets/book_action.dart';
import 'package:clean_architecture/Feature/home/presentation/views/widgets/book_details_section.dart';
import 'package:clean_architecture/Feature/home/presentation/views/widgets/book_rating.dart';
import 'package:clean_architecture/Feature/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:clean_architecture/Feature/home/presentation/views/widgets/custom_book_item.dart';
import 'package:clean_architecture/Feature/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:clean_architecture/Feature/home/presentation/views/widgets/similar_books_section.dart';
import 'package:clean_architecture/core/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return CustomScrollView(
      slivers:
      [
        SliverFillRemaining(
          hasScrollBody: false,
          child:Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children:
              const [
                CustomBookDetailAppBar(),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 50,)),
                SimilarBooksSection(),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
