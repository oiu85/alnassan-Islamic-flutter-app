import 'package:equatable/equatable.dart';

abstract class AdvisoryViewerEvent extends Equatable {
  const AdvisoryViewerEvent();

  @override
  List<Object?> get props => [];
}

class FetchAdvisoryDetailsEvent extends AdvisoryViewerEvent {
  final int advisoryId;

  const FetchAdvisoryDetailsEvent(this.advisoryId);

  @override
  List<Object?> get props => [advisoryId];
}

class ChangeTextSizeEvent extends AdvisoryViewerEvent {
  final double textSize;

  const ChangeTextSizeEvent(this.textSize);

  @override
  List<Object?> get props => [textSize];
}

class ToggleNightModeEvent extends AdvisoryViewerEvent {
  final bool isNightMode;

  const ToggleNightModeEvent(this.isNightMode);

  @override
  List<Object?> get props => [isNightMode];
}
