import 'package:clean_architecture/Feature/home/presentation/views/widgets/book_action.dart';
import 'package:clean_architecture/Feature/home/presentation/views/widgets/book_rating.dart';
import 'package:clean_architecture/Feature/home/presentation/views/widgets/custom_book_item.dart';
import 'package:clean_architecture/core/utils/styles.dart';
import 'package:flutter/material.dart';
class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return Column(
      children:
      [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width*.2),
          child:  CustomBookImage(
            image: '',
          ),
        ),
        const SizedBox(height: 43,),
        Text(
          'The Jungle Book',
          style: Style.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 6,),
        Opacity(
          opacity: .7,
          child: Text(
            'Rudyard Klipping',
            style: Style.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(height: 18,),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 37,),
        const BookAction(),
      ],
    );
  }
}