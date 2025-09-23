import 'package:flutter_bloc/flutter_bloc.dart';
import 'shared_event.dart';
import 'shared_state.dart';

class SharedBloc extends Bloc<SharedEvent, SharedState> {
  SharedBloc() : super(const SharedState()) {
    on<ChangePageEvent>(_onChangePage);
    on<NavigateToHomeEvent>(_onNavigateToHome);
    on<NavigateBackEvent>(_onNavigateBack);
  }

  void _onChangePage(ChangePageEvent event, Emitter<SharedState> emit) {
    emit(state.copyWith(
      currentPageIndex: event.pageIndex,
      isNavigating: true,
    ));
    
    // Reset navigation flag after a short delay
    Future.delayed(const Duration(milliseconds: 100), () {
      if (!isClosed) {
        emit(state.copyWith(isNavigating: false));
      }
    });
  }

  void _onNavigateToHome(NavigateToHomeEvent event, Emitter<SharedState> emit) {
    emit(state.copyWith(
      currentPageIndex: 0,
      isNavigating: true,
    ));
    
    // Reset navigation flag after a short delay
    Future.delayed(const Duration(milliseconds: 100), () {
      if (!isClosed) {
        emit(state.copyWith(isNavigating: false));
      }
    });
  }

  void _onNavigateBack(NavigateBackEvent event, Emitter<SharedState> emit) {
    // Navigate back to home (index 0)
    emit(state.copyWith(
      currentPageIndex: 0,
      isNavigating: true,
    ));
    
    // Reset navigation flag after a short delay
    Future.delayed(const Duration(milliseconds: 100), () {
      if (!isClosed) {
        emit(state.copyWith(isNavigating: false));
      }
    });
  }
}
