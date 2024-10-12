import 'package:clean_architecture/Feature/home/data/data_sources/home_local_data_source.dart';
import 'package:clean_architecture/Feature/home/data/data_sources/home_remote_data_source.dart';
import 'package:clean_architecture/Feature/home/data/repos/home_repo_impl.dart';
import 'package:clean_architecture/core/utils/api_service.dart';
import 'package:clean_architecture/main.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';


final getIt=GetIt.instance;
void setupServiceLocator() {

  getIt.registerSingleton<ApiSerivce>(
      ApiSerivce(
      Dio()
  ));

  getIt.registerSingleton<HomeRepoImpl>( HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImp(),
      homeRemoteDataSource: HomeRemoteDataSourceImp(
        getIt.get<ApiSerivce>(),
      )),);
}