import 'package:equatable/equatable.dart';

abstract class SharedEvent extends Equatable {
  const SharedEvent();

  @override
  List<Object?> get props => [];
}

class ChangePageEvent extends SharedEvent {
  final int pageIndex;

  const ChangePageEvent({required this.pageIndex});

  @override
  List<Object?> get props => [pageIndex];
}

class NavigateToHomeEvent extends SharedEvent {
  const NavigateToHomeEvent();
}

class NavigateBackEvent extends SharedEvent {
  const NavigateBackEvent();
}
