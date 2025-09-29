import 'package:equatable/equatable.dart';

class SharedState extends Equatable {
  final int currentPageIndex;
  final bool isNavigating;

  const SharedState({
    this.currentPageIndex = 0,
    this.isNavigating = false,
  });

  SharedState copyWith({
    int? currentPageIndex,
    bool? isNavigating,
  }) {
    return SharedState(
      currentPageIndex: currentPageIndex ?? this.currentPageIndex,
      isNavigating: isNavigating ?? this.isNavigating,
    );
  }

  @override
  List<Object?> get props => [currentPageIndex, isNavigating];
}
