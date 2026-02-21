import 'package:anime_universe/src/core/network/interceptors/log_interceptor.dart';
import 'package:anime_universe/src/core/network/interceptors/rate_limit_interceptor.dart';
import 'package:dio/dio.dart';

class DioInterceptorsFactory {
  DioInterceptorsFactory._();

  static List<Interceptor> build({required bool enableLogs}) => [
    if (enableLogs) LogInterceptorLite(),
    RateLimitInterceptor(),
  ];
}
