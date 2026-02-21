import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';

class AppLogger {
  AppLogger._();

  static late final Logger _logger;

  static void init() {
    _logger = Logger(
      level: kReleaseMode ? Level.warning : Level.trace,
      printer: PrettyPrinter(
        methodCount: 0,
        lineLength: 110,
        dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
      ),
    );

    i('Logger initialized', tag: ' INIT');
  }

  // --------------------Shortcuts----------------------
  static void v(dynamic message, {String? tag}) => _logger.t(_tag(tag, message));

  static void d(dynamic message, {String? tag}) => _logger.d(_tag(tag, message));

  static void i(dynamic message, {String? tag}) => _logger.i(_tag(tag, message));

  static void w(dynamic message, {String? tag, Object? error, StackTrace? stackTrace}) =>
      _logger.w(_tag(tag, message), error: error, stackTrace: stackTrace);

  static void e(dynamic message, {String? tag, Object? error, StackTrace? stackTrace}) =>
      _logger.e(_tag(tag, message), error: error, stackTrace: stackTrace);

  static String _tag(String? tag, dynamic message){
    if(tag == null || tag.isEmpty) return '$message';
    return '[$tag] $message';
  }
}
