import 'package:anime_universe/src/core/utils/logger.dart';
import 'package:dio/dio.dart';

class LogInterceptorLite extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
    AppLogger.d('REQUEST ➡️➡️➡️ ${options.method} ${options.uri}', tag: 'DIO');
  }

  @override
  void onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
    AppLogger.d('RESPONSE ✅✅✅ ${response.data} ', tag: 'DIO');
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
    AppLogger.e(
      'ERROR ❌❌❌ ${err.response?.statusCode} ${err.requestOptions.uri}',
      tag: 'DIO',
      error: err,
      stackTrace: err.stackTrace,
    );
  }
}
