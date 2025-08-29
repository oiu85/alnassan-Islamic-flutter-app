import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_state.freezed.dart';

@freezed
class PageState<T> with _$PageState<T> {
  const PageState._();

  const factory PageState.init() = _init<T>;

  const factory PageState.loading() = _Lodaing<T>;

  const factory PageState.loaded({required T data}) = _Loaded<T>;

  const factory PageState.empty() = _Empty<T>;

  const factory PageState.error({Exception? exception}) = _Error<T>;
}

extension PageStateEx<T> on PageState<T> {
  bool get isInit => maybeWhen(orElse: () => false, init: () => true);

  bool get isLoading => maybeWhen(orElse: () => false, loading: () => true);

  bool get isLoaded => maybeWhen(orElse: () => false, loaded: (_) => true);

  bool get isEmpty => maybeWhen(orElse: () => false, empty: () => true);

  bool get isError => maybeWhen(orElse: () => false, error: (_) => true);

  _Lodaing<T> get loading => this as _Lodaing<T>;

  _Loaded<T> get loaded => this as _Loaded<T>;

  T get data => (this as _Loaded).data;

  T? get getDataWhenSuccess => maybeWhen(loaded: (d) => d, orElse: () => null);

  String get error => (this as _Error).error;
}
