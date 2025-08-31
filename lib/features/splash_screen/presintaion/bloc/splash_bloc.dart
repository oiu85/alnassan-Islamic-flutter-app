import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/features/splash_screen/presintaion/bloc/splash_event.dart';
import 'package:nassan_app/features/splash_screen/presintaion/bloc/splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(const SplashState()) {
    on<SplashInitialEvent>(_onSplashInitialEvent);
    on<NavigateToHomeEvent>(_onNavigateToHomeEvent);
  }

  FutureOr<void> _onSplashInitialEvent(SplashInitialEvent event, Emitter<SplashState> emit) {
    emit(state.copyWith(status: SplashStatus.loading));
    
    // Delay for 2 seconds before navigating to home
    Future.delayed(const Duration(seconds: 2), () {
      add(const NavigateToHomeEvent());
    });
  }

  FutureOr<void> _onNavigateToHomeEvent(NavigateToHomeEvent event, Emitter<SplashState> emit) {
    emit(state.copyWith(status: SplashStatus.navigateToHome));
  }
}