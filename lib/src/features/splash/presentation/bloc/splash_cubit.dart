import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'splash_state.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(const SplashState());

  Timer? _timer;

  /// Start timer to show progress
  void startTimer({Duration total = const Duration(seconds: 3)}) {
    _timer?.cancel();
    emit(const SplashState());

    /// [total] - total time to show progress
    /// [tick] - tick time to show progress
    /// [steps] - total steps to show progress
    /// [currentStep] - current step to show progress
    const Duration tick = Duration(milliseconds: 50);
    final int totalMs = total.inMilliseconds;
    final int steps = (totalMs / tick.inMilliseconds).round().clamp(1, 100000);
    int currentStep = 0;

    _timer = Timer.periodic(tick, (t) {
      currentStep++;
      final double progress = (currentStep / steps).clamp(0, 1);
      emit(state.copyWith(progress: progress));

      if (progress >= 1.0) t.cancel();
    });
  }
}
