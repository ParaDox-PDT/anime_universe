import 'package:anime_universe/src/core/constants/endpoints.dart';
import 'package:dio/dio.dart';

class DioClient {
  DioClient({required Dio dio, required List<Interceptor> interceptors}) : _dio = dio {
    _dio.options = BaseOptions(
      baseUrl: Endpoints.baseUrl,
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 15),
      headers: {'Accept': 'application/json', 'Content-Type': 'application/json'},
    );
    _dio.interceptors.addAll(interceptors);
  }

  final Dio _dio;

  Dio get dio => _dio;
}
