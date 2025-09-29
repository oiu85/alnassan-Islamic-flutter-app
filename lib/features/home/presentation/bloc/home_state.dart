import 'package:equatable/equatable.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/model/home_model.dart';

class HomeState extends Equatable {
  final BlocStatus status;
  final HomeModel? homeData;
  final String? error;

  const HomeState({
    this.status = const BlocStatus.initial(),
    this.homeData,
    this.error,
  });

  HomeState copyWith({BlocStatus? status, HomeModel? homeData, String? error}) {
    return HomeState(
      status: status ?? this.status,
      homeData: homeData ?? this.homeData,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [status, homeData, error];
}
