import 'package:dio/dio.dart';

class RateLimitInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    super.onError(err, handler);
    final int? status = err.response?.statusCode;

    if (status == 429) {
      final retryAfter = _parseRetryAfterSeconds(err.response?.headers);

      final String message = retryAfter != null
          ? 'Too many requests. Try again in $retryAfter seconds.'
          : 'Too many requests. Please try again later.';

      final updateResponse = err.response?.copyWith(
        data: _mergeData(err.response?.data, message, retryAfter),
      );

      handler.reject(err.copyWith(response: updateResponse));
      return;
    }
  }

  int? _parseRetryAfterSeconds(Headers? headers) {
    if (headers == null) return null;
    final values = headers.map['retry-after'];
    if (values == null || values.isEmpty) return null;
    return int.tryParse(values.first.trim());
  }

  dynamic _mergeData(dynamic data, String message, int? retryAfterSeconds) {
    if (data is Map<String, dynamic>) {
      return {
        ...data,
        'message': data['message'] ?? message,
        'retry_after': data['retry_after'] ?? retryAfterSeconds,
      };
    }
    return {'message': message, 'retry_after': retryAfterSeconds};
  }
}

extension on Response<dynamic> {
  Response<dynamic> copyWith({dynamic data}) => Response(
    requestOptions: requestOptions,
    data: data ?? this.data,
    headers: headers,
    statusCode: statusCode,
    statusMessage: statusMessage,
    redirects: redirects,
    extra: extra,
    isRedirect: isRedirect,
  );
}
