import 'package:dio/dio.dart';

class DioClient {
  late final Dio _dio;

  DioClient._privateConstructor() {
    _dio = Dio();
    // _dio.interceptors.add(PrettyDioLogger(
    //   requestHeader: true,
    //   requestBody: true,
    //   responseBody: true,
    //   responseHeader: false,
    //   error: true,
    //   compact: true,
    //   maxWidth: 90,
    // ));
    _dio.options.headers["Content-Type"] = "application/json";
    _dio.options.headers["Accept"] = "application/json";
    _dio.options.connectTimeout = 10000;
    _dio.options.baseUrl = 'https://api.jikan.moe/v4/';
  }

  static final DioClient _dioClient = DioClient._privateConstructor();

  factory DioClient() {
    return _dioClient;
  }

  Future<Response> post(String url, {dynamic data}) async {
    final response = await _dio.post(url, data: data);
    return response;
  }

  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    void Function(int, int)? onReceiveProgress,
  }) async {
    final response = await _dio.get(
      url,
      queryParameters: queryParameters,
      options: options,
      onReceiveProgress: onReceiveProgress,
    );
    return response;
  }

  Future<Response> put(String url, {Map<String, dynamic>? data}) async {
    final response = await _dio.put(url, data: data);
    return response;
  }

  Future<Response> delete(String url) async {
    final response = await _dio.delete(url);
    return response;
  }
}
