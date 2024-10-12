import 'package:dio/dio.dart';

abstract class Failure {
  final String message;

  Failure(this.message);
}

class ServiceFailure extends Failure{
  ServiceFailure(super.message);
  factory ServiceFailure.fromDiorError(DioException e)
  {
switch(e.type){
  case DioExceptionType.connectionTimeout:
    return ServiceFailure('Connection timeout with api server');
  case DioExceptionType.sendTimeout:
    return ServiceFailure('Send timeout with api server');
  case DioExceptionType.receiveTimeout:
    return ServiceFailure('recieve timeout with api server');
  case DioExceptionType.badCertificate:
    return ServiceFailure('badCertificate with api server');
  case DioExceptionType.badResponse:
    return ServiceFailure.fromResponse(e.response!.statusCode!,e.response!.data);
  case DioExceptionType.cancel:
    return ServiceFailure('Request to api server was cancled');
  case DioExceptionType.connectionError:
    return ServiceFailure('No internet Connection');
  case DioExceptionType.unknown:
    return ServiceFailure('Opps there is error,please try again');

}
  }
factory ServiceFailure.fromResponse(int statusCode ,dynamic response)
{
if(statusCode==404)
  {
    return ServiceFailure('Request not found,please try again');
  }else if(statusCode==500)
{
  return ServiceFailure('There is a problem,please try again');
}else if(statusCode==400 ||statusCode==401 ||statusCode==403)
{
  return ServiceFailure(response['error']['message']);
}
else{
  return ServiceFailure('Opps there is error,please try again');
}
}
}
