import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({required this.message, this.code});

  final String message;
  final int? code;

  @override
  List<Object?> get props => [message, code];
}

class NoInternetFailure extends Failure {
  const NoInternetFailure({super.message = 'No internet connection'});
}

class TimeoutFailure extends Failure {
  const TimeoutFailure({super.message = 'Request timeout'});
}

class ServerFailure extends Failure {
  const ServerFailure({super.message = 'Server error', super.code});
}

class CancelledFailure extends Failure {
  const CancelledFailure({super.message = 'Request cancelled'});
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure({super.message = 'Unauthorized'}) : super(code: 401);
}

class ForbiddenFailure extends Failure {
  const ForbiddenFailure({super.message = 'Forbidden'}) : super(code: 403);
}


class NotFoundFailure extends Failure {
  const NotFoundFailure({super.message = 'Not found'})
      : super(code: 404);
}

class RateLimitFailure extends Failure {
  const RateLimitFailure({
    super.message = 'Too many requests. Please try again later.',
    this.retryAfterSeconds,
  })  : super(code: 429);

  final int? retryAfterSeconds;

  @override
  List<Object?> get props => [...super.props, retryAfterSeconds];
}

class ParsingFailure extends Failure {
  const ParsingFailure({super.message = 'Data parsing error'});
}

class UnknownFailure extends Failure {
  const UnknownFailure({super.message = 'Unknown error'});
}