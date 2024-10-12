import 'package:hive/hive.dart';
part 'book_entity.g.dart';
@HiveType(typeId: 0)
class BookEntity
{
@HiveField(0)
final String bookId;
@HiveField(1)
  final String? image;
@HiveField(2)
  final String? authName;
@HiveField(3)
  final num? rating;
@HiveField(4)
  final String title;
@HiveField(5)
  final num? price;

  BookEntity(
      {required this.image,
        required this.authName,
        required this.rating,
        required this.title,
        required this.price,
        required this.bookId});
}