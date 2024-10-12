import 'package:clean_architecture/Feature/search/presntation/view/widgets/search_view_body.dart';
import 'package:clean_architecture/Feature/splash/presentaion/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SearchViewBody(),
      ),
    );
  }
}
