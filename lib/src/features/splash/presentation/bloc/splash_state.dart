part of 'splash_cubit.dart';

class SplashState extends Equatable {
  const SplashState({this.progress = 0.0});

  final double progress;

  SplashState copyWith({double? progress}) =>
      SplashState(progress: progress ?? this.progress);

  @override
  List<Object> get props => [progress];
}
