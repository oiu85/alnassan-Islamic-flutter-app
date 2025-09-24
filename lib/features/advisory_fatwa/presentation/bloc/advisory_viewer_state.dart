import 'package:equatable/equatable.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/model/advisory_detail.dart';

class AdvisoryViewerState extends Equatable {
  final BlocStatus status;
  final AdvisoryDetail? advisory;
  final String? error;
  final double textSize;
  final bool isNightMode;

  const AdvisoryViewerState({
    this.status = const BlocStatus.initial(),
    this.advisory,
    this.error,
    this.textSize = 18.0,
    this.isNightMode = false,
  });

  AdvisoryViewerState copyWith({
    BlocStatus? status,
    AdvisoryDetail? advisory,
    String? error,
    double? textSize,
    bool? isNightMode,
  }) {
    return AdvisoryViewerState(
      status: status ?? this.status,
      advisory: advisory ?? this.advisory,
      error: error ?? this.error,
      textSize: textSize ?? this.textSize,
      isNightMode: isNightMode ?? this.isNightMode,
    );
  }

  @override
  List<Object?> get props => [status, advisory, error, textSize, isNightMode];
}
