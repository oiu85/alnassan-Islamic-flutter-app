import 'package:equatable/equatable.dart';

abstract class BiographyEvent extends Equatable {
  const BiographyEvent();

  @override
  List<Object?> get props => [];
}

class FetchBiographyArticleEvent extends BiographyEvent {
  const FetchBiographyArticleEvent();
}
