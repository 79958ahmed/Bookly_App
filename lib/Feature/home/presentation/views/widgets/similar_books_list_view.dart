import 'package:clean_architecture/Feature/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.15,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder:(context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
              child: CustomBookImage(
                image: '',
              ),
            );
          }
      ),
    );
  }
}
