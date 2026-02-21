import 'dart:async';

import 'package:anime_universe/src/app/app.dart';
import 'package:anime_universe/src/app/app_bloc_observer.dart';
import 'package:anime_universe/src/app/app_initializer.dart';
import 'package:anime_universe/src/core/utils/logger.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'src/core/di/di_part.dart';

Future<void> bootstrap() async {
  await runZonedGuarded(
        () async {
      WidgetsFlutterBinding.ensureInitialized();

      // UI settings
      await SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp],
      );

      // Logger
      AppLogger.init();

      FlutterError.onError = (details) {
        FlutterError.presentError(details);
        AppLogger.e(
          'FlutterError',
          error: details.exception,
          stackTrace: details.stack,
        );
      };

      // App initializer (Hive, env, config, cache warmup, ... )
      await AppInitializer.init();

      // DI
      await configureDependencies();

      // Bloc observer (event/state transitions log)
      Bloc.observer = AppBlocObserver();

      runApp(const App());
    },
        (error, stack) {
      // Uncaught zone errors
      AppLogger.e('Uncaught zone error', error: error, stackTrace: stack);
    },
  );
}