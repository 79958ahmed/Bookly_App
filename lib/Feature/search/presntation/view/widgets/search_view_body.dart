import 'package:clean_architecture/Feature/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:clean_architecture/Feature/search/presntation/view/widgets/custom_search_text_field.dart';
import 'package:clean_architecture/Feature/search/presntation/view/widgets/search_result_list_view.dart';
import 'package:clean_architecture/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children:
        [
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: CustomSearchTextField(),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Result',
            style: Style.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(child: SearchResultListView(),),
        ],
      ),
    );
  }
}