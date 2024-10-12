import 'package:clean_architecture/Feature/home/domain/entities/book_entity.dart';
import 'package:clean_architecture/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo
{
Future<Either<Failure,List<BookEntity>>> fetchFeaturedBooks();
Future<Either<Failure,List<BookEntity>>> fetchNewstBooks();

}