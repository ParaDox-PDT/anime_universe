part of 'di_part.dart';

final sl = GetIt.instance;

Future<void> configureDependencies() async {
  // Core
  sl
    /// Register Network Info, this need for checking internet connection
    ..registerLazySingleton(Connectivity.new)
    ..registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()))
    /// Register Singleton Dio and Interceptors
    ..registerLazySingleton(Dio.new)
    ..registerLazySingleton(() => DioInterceptorsFactory.build(enableLogs: true))
    ..registerLazySingleton<DioClient>(
      () => DioClient(dio: sl(), interceptors: sl<List<Interceptor>>()),
    );

  // Features registratsiya (animeFeature(); mangaFeature(); ...)
  // animeFeature(sl);
}
