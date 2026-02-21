import 'package:anime_universe/src/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

typedef ResultFuture<T> = Future<Either<Failure,T>>;
typedef Result<T> = Either<Failure,T>;