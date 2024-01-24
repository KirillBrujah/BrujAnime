import 'package:brujanime/data/repositories.dart';
import 'package:brujanime/data/source/network/rest_client.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final getIt = GetIt.instance;

Dio _buildDioClient() => Dio()
  ..options.headers["Content-Type"] = "application/json"
  ..options.headers["Accept"] = "application/json"
  ..options.connectTimeout = const Duration(seconds: 10)
  ..interceptors.add(PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseBody: true,
    responseHeader: false,
    error: true,
    compact: true,
    maxWidth: 90,
  ));

void setupLocator() {
  getIt.registerLazySingleton<RestClient>(() => RestClient(_buildDioClient()));

  getIt.registerLazySingleton<TopRepository>(() => TopRepository());
}
