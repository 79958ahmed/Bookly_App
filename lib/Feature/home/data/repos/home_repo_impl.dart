import 'package:clean_architecture/Feature/home/data/data_sources/home_local_data_source.dart';
import 'package:clean_architecture/Feature/home/data/data_sources/home_remote_data_source.dart';
import 'package:clean_architecture/Feature/home/domain/entities/book_entity.dart';
import 'package:clean_architecture/Feature/home/domain/repos/home_repo.dart';
import 'package:clean_architecture/core/errors/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo{
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpl({required this.homeRemoteDataSource, required this.homeLocalDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks()async
  {
   try {
     var booksList=homeLocalDataSource.fetchFeaturedBooks();
     if(booksList.isNotEmpty)
       {
         return right(booksList);
       }
      booksList = await homeRemoteDataSource.fetchFeaturedBooks();
     return right(booksList);
   } catch (e) {
     if(e is DioException){
       return left(ServiceFailure.fromDiorError(e));
     }

       return left(ServiceFailure(e.toString()));
   }

  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewstBooks()async {
    try {
      List<BookEntity>books;
      books = homeLocalDataSource.fetchNewstBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.fetchNewstBooks();

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServiceFailure.fromDiorError(e));
      }
      return left(ServiceFailure(e.toString()));
    }
  }
}