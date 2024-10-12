import 'package:clean_architecture/Feature/home/data/models/book_models/book_model.dart';
import 'package:clean_architecture/Feature/home/domain/entities/book_entity.dart';
import 'package:clean_architecture/constants/constants.dart';
import 'package:clean_architecture/core/utils/api_service.dart';
import 'package:clean_architecture/core/utils/functions/save_books.dart';
import 'package:hive/hive.dart';
abstract class HomeRemoteDataSource
{
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>>  fetchNewstBooks();
}
class HomeRemoteDataSourceImp extends HomeRemoteDataSource
{
  final ApiSerivce apiSerivce;
  HomeRemoteDataSourceImp(this.apiSerivce);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks()async {
   var data= await apiSerivce.get(
       endPiont: 'volumes?Filtering=free-ebooks&q=computer science'
   );
   List<BookEntity> books = getBookList(data);
   saveBooksData(books,kFeaturedBox);
return books;
  }
  @override
  Future<List<BookEntity>> fetchNewstBooks()async {
    var data= await apiSerivce.get(
        endPiont: 'volumes?Filtering=free-ebooks&Sorting=newest&q=computer science'
    );
    List<BookEntity> books = getBookList(data);
    saveBooksData(books, kNewestBox);
    return books;
  }
  List<BookEntity> getBookList(Map<String, dynamic> data) {
    List<BookEntity>books=[];
    for (var bookMap in data ['items'])
    {
      books.add( BookModel.fromJson(bookMap));
    }
    return books;
  }
  }

