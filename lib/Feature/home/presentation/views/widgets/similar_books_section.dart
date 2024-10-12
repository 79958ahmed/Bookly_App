import 'package:clean_architecture/Feature/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:clean_architecture/core/utils/styles.dart';
import 'package:flutter/material.dart';
class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style:Style.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),

        ),
        const SizedBox(
          height: 16,
        ),
        const SimilarBooksListView(),
      ],
    );
  }
}


