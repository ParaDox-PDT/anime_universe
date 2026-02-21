import 'package:anime_universe/src/core/utils/logger.dart';

class AppInitializer {
  AppInitializer._();

  static Future<void> init()async{
    AppLogger.i('AppInitializer.init()',tag: 'INIT');


    // TODO: Hive.initFlutter();
    // TODO: register adapters
    // TODO: open boxes
  }
}