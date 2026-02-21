import 'package:anime_universe/src/core/errors/error_mapper.dart';
import 'package:anime_universe/src/core/errors/exception.dart';
import 'package:anime_universe/src/core/errors/failure.dart';
import 'package:anime_universe/src/core/network/network_info.dart';
import 'package:anime_universe/src/core/utils/typedefs.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

ResultFuture<T> safeApiCall<T>({
  required NetworkInfo networkInfo,
  required Future<T> Function() request,
}) async {
  final bool connected = await networkInfo.isConnected;
  if (!connected) {
    return const Left(NoInternetFailure());
  }
  try {
    final result = await request();
    return Right(result);
  } on DioException catch (e) {
    final AppException appException = ErrorMapper.mapDioError(e);
    return Left(ErrorMapper.mapExceptionToFailure(appException));
  } on AppException catch (e) {
    return Left(ErrorMapper.mapExceptionToFailure(e));
  } catch (_) {
    return const Left(UnknownFailure(message: 'Something went wrong'));
  }
}
