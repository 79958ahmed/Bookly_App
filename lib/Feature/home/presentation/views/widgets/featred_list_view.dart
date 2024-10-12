import 'package:clean_architecture/Feature/home/domain/entities/book_entity.dart';
import 'package:clean_architecture/Feature/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({Key? key, required this.books}) : super(key: key);

  final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder:(context, index) {
            return  Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: CustomBookImage(
                image: books[index].image ?? '',
              ),
            );
          }
      ),
    );
  }
}


