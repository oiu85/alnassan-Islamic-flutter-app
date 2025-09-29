import 'package:equatable/equatable.dart';
import 'package:nassan_app/core/models/page_state/bloc_status.dart';



class SplashState extends Equatable {
  final BlocStatus status;

  const SplashState({this.status = const BlocStatus.initial()});

  SplashState copyWith({BlocStatus? status}) {
    return SplashState(status: status ?? this.status);
  }

  @override
  List<Object?> get props => [status.status, status.error];
}

