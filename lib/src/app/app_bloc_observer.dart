import 'package:anime_universe/src/core/utils/logger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    super.onEvent(bloc, event);
    AppLogger.d('${bloc.runtimeType} ==> event: $event', tag: 'BLOC');
  }

  @override
  void onTransition(
    Bloc<dynamic, dynamic> bloc,
    Transition<dynamic, dynamic> transition,
  ) {
    super.onTransition(bloc, transition);
    AppLogger.d('${bloc.runtimeType} ==> transition: $transition', tag: 'BLOC');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    AppLogger.e(
      '${bloc.runtimeType}==> error: $error',
      error: error,
      stackTrace: stackTrace,
      tag: 'BLOC',
    );
  }
}
