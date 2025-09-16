import 'package:equatable/equatable.dart';
import '../../data/model.dart';

abstract class SoundLibraryEvent extends Equatable {
  const SoundLibraryEvent();

  @override
  List<Object?> get props => [];
}

class FetchHierarchicalCategoriesEvent extends SoundLibraryEvent {
  const FetchHierarchicalCategoriesEvent();
}

class SelectLevel1CategoryEvent extends SoundLibraryEvent {
  final Level1RootCategory category;

  const SelectLevel1CategoryEvent({required this.category});

  @override
  List<Object?> get props => [category];
}

class NavigateToLevel2CategoryEvent extends SoundLibraryEvent {
  final Level2Category category;

  const NavigateToLevel2CategoryEvent({required this.category});

  @override
  List<Object?> get props => [category];
}

class NavigateToLevel3CategoryEvent extends SoundLibraryEvent {
  final Level3Category category;

  const NavigateToLevel3CategoryEvent({required this.category});

  @override
  List<Object?> get props => [category];
}

class NavigateToLevel4CategoryEvent extends SoundLibraryEvent {
  final Level4Category category;

  const NavigateToLevel4CategoryEvent({required this.category});

  @override
  List<Object?> get props => [category];
}

class ToggleDirectSoundsViewEvent extends SoundLibraryEvent {
  const ToggleDirectSoundsViewEvent();
}

class ResetSoundLibraryEvent extends SoundLibraryEvent {
  const ResetSoundLibraryEvent();
}
