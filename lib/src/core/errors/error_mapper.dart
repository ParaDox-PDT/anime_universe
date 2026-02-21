import 'package:anime_universe/src/core/errors/exception.dart';
import 'package:anime_universe/src/core/errors/failure.dart';
import 'package:dio/dio.dart';

class ErrorMapper {
  ErrorMapper._();

  /// DioException -> AppException
  /// This class can help convert DioException to AppException
  static AppException mapDioError(DioException e) {
    // Timeouts
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.sendTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      return TimeoutExceptionX();
    }

    // Cancel
    if (e.type == DioExceptionType.cancel) {
      return CancelledException();
    }

    // Network failure (no internet connection | DioExceptionType.connectionError / unknown)
    if (e.type == DioExceptionType.connectionError) {
      return NoInternetException();
    }

    final int? status = e.response?.statusCode;
    final retryAfter = _parseRetryAfterSeconds(e.response?.headers);

    // Rate limit
    if (status == 429) {
      return RateLimitException(
        retryAfterSeconds: retryAfter,
        message: retryAfter != null
            ? 'Too many requests. Try again in $retryAfter seconds.'
            : 'Too many requests. Please try again later.',
      );
    }

    // Auth / common
    switch (status) {
      case 401:
        return UnauthorizedException();
      case 403:
        return ForbiddenException();
      case 404:
        return NotFoundException();
    }

    // Server
    if (status != null && status >= 500) {
      return ServerException(code: status);
    }

    // If backend return message, you can change this message
    final msg = _extractMessage(e.response?.data) ?? 'Unexpected';
    return UnknownException(message: msg);
  }

  /// AppException -> Failure
  static Failure mapExceptionToFailure(AppException e) {
    if (e is NoInternetException) return NoInternetFailure(message: e.message);
    if (e is TimeoutExceptionX) return TimeoutFailure(message: e.message);
    if (e is CancelledException) return CancelledFailure(message: e.message);
    if (e is UnauthorizedException) return UnauthorizedFailure(message: e.message);
    if (e is ForbiddenException) return ForbiddenFailure(message: e.message);
    if (e is NotFoundException) return NotFoundFailure(message: e.message);
    if (e is RateLimitException) {
      return RateLimitFailure(message: e.message, retryAfterSeconds: e.retryAfterSeconds);
    }
    if (e is ServerException) return ServerFailure(message: e.message, code: e.code);
    if (e is ParsingException) return ParsingFailure(message: e.message);

    return UnknownFailure(message: e.message);
  }

  static int? _parseRetryAfterSeconds(Headers? headers) {
    if (headers == null) return null;
    final values = headers.map['retry-after'];
    if (values == null || values.isEmpty) return null;
    return int.tryParse(values.first.trim());
  }

  static String? _extractMessage(dynamic data) {
    // This method can be handled according to different APIs
    if (data is Map<String, dynamic>) {
      final msg = data['message'] ?? data['error'] ?? data['detail'] ?? 'Unexpected';
      if (msg is String && msg.trim().isNotEmpty) return msg;
    }
    return null;
  }
}
