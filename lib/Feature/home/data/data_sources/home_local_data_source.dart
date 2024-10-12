import 'package:clean_architecture/Feature/home/domain/entities/book_entity.dart';
import 'package:clean_architecture/constants/constants.dart';
import 'package:hive/hive.dart';

abstract class HomeLocalDataSource
{
  List<BookEntity> fetchFeaturedBooks();
  List<BookEntity>  fetchNewstBooks();

}
class HomeLocalDataSourceImp extends HomeLocalDataSource
{
  @override
  List<BookEntity> fetchFeaturedBooks() {
var box=Hive.box<BookEntity>(kFeaturedBox);
return box.values.toList();

  }

  @override
  List<BookEntity> fetchNewstBooks() {
var box=Hive.box<BookEntity>(kNewestBox);
return box.values.toList();
  }

}