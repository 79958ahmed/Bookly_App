import 'package:clean_architecture/Feature/home/data/repos/home_repo_impl.dart';
import 'package:clean_architecture/Feature/home/domain/entities/book_entity.dart';
import 'package:clean_architecture/Feature/home/domain/use_cases/fetch_newst_books_use_case.dart';
import 'package:clean_architecture/Feature/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:clean_architecture/Feature/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:clean_architecture/constants/constants.dart';
import 'package:clean_architecture/core/utils/app_router.dart';
import 'package:clean_architecture/core/utils/functions/setup_service_locator.dart';
import 'package:clean_architecture/core/utils/functions/simple_bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'Feature/home/domain/use_cases/fech_feartured_books_use_case.dart';
//import 'package:get/get.dart';


void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setupServiceLocator();
  await Hive.openBox<BookEntity>(kFeaturedBox);
  await Hive.openBox<BookEntity>(kNewestBox);
  Bloc.observer = SimpleBlocObserver();
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeaturedBooksCubit(
              FetchFeaturedBooksUseCase(
                getIt.get<HomeRepoImpl>(),
              ),
            )..fetchFeaturedBooks();
          },
        ),
        BlocProvider(
          create: (context) {
            return NewestBooksCubit(
              FetchNewestdBooksUseCase(
                getIt.get<HomeRepoImpl>(),
              ),
            );
          },
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
          GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}