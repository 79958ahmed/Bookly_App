import 'package:clean_architecture/Feature/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:clean_architecture/Feature/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:clean_architecture/Feature/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:clean_architecture/Feature/home/presentation/views/widgets/custom_book_item.dart';
import 'package:clean_architecture/Feature/home/presentation/views/widgets/featred_list_view.dart';
import 'package:clean_architecture/Feature/home/presentation/views/widgets/featured_books_list_view_bloc_builder.dart';
import 'package:clean_architecture/constants/constants.dart';
import 'package:clean_architecture/core/utils/styles.dart';
import 'package:clean_architecture/core/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: CustomScrollView(
        slivers:
        [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: CustomAppBar(),
                ),
                FeaturedBooksListViewBlocBuilder(),
                SizedBox(
                  height: 48,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30,),
                  child: Text(
                    'Best Seller',
                    style:Style.textStyle18,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ) ,
          ),
            SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: BestSellerListView(),
            ),
          ),
        ],
      ),
    );
  }
}


