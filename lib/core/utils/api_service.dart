import 'package:dio/dio.dart';

class ApiSerivce
{
  final Dio _dio;
  final baseUrl="https://www.googleapis.com/books/v1/ ";

  ApiSerivce(this._dio);

  Future<Map<String,dynamic>> get({required String endPiont})async
  {
  var response= await _dio.get('$baseUrl$endPiont');
return response.data;
  }
}