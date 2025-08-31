import 'package:equatable/equatable.dart';

enum SplashStatus { initial, loading, navigateToHome }

class SplashState extends Equatable {
  final SplashStatus status;

  const SplashState({
    this.status = SplashStatus.initial,
  });

  SplashState copyWith({
    SplashStatus? status,
  }) {
    return SplashState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object> get props => [status];
}