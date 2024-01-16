import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:technomart_project/data/source/remote/api/api_service.dart';
import 'package:technomart_project/domain/AppRepository.dart';
import 'package:technomart_project/domain/impl/AppRepositoryImpl.dart';

final getIt = GetIt.instance;
final dio = Dio(BaseOptions(
    baseUrl: 'https://gateway.texnomart.uz/api/',
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 60),
    contentType: 'application/json',
    receiveDataWhenStatusError: true));

void setup() {
  getIt.registerSingleton<ApiClient>(ApiClient(dio));
  getIt.registerSingleton<AppRepository>(AppRepositoryImpl());
}
