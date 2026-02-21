abstract class AppException implements Exception {
  AppException(this.message, {this.code});

  final String message;
  final int? code;

  @override
  String toString() => 'AppException(code: $code, message: $message)';
}

class NoInternetException extends AppException {
  NoInternetException({String message = 'No internet connection'}) : super(message);
}

class TimeoutExceptionX extends AppException {
  TimeoutExceptionX({String message = 'Request timeout'}) : super(message);
}

class CancelledException extends AppException {
  CancelledException({String message = 'Request cancelled'}) : super(message);
}

class UnauthorizedException extends AppException {
  UnauthorizedException({String message = 'Unauthorized'}) : super(message, code: 401);
}

class ForbiddenException extends AppException {
  ForbiddenException({String message = 'Forbidden'}) : super(message, code: 403);
}

class NotFoundException extends AppException {
  NotFoundException({String message = 'Not found'}) : super(message, code: 404);
}

class RateLimitException extends AppException {
  RateLimitException({
    String message = 'Too many requests. Please try again later.',
    this.retryAfterSeconds,
  }) : super(message, code: 429);

  final int? retryAfterSeconds;
}

class ServerException extends AppException {
  ServerException({String message = 'Server error', int? code})
    : super(message, code: code);
}

class ParsingException extends AppException {
  ParsingException({String message = 'Data parsing error'}) : super(message);
}

class UnknownException extends AppException {
  UnknownException({String message = 'Unknown error'}) : super(message);
}
