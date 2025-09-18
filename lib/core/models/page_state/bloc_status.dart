import 'dart:core';

enum Status {
  initial,
  loading,
  loadingMore,
  success,
  fail,
}

class BlocStatus {
  final Status status;
  final String? error;

  const BlocStatus.loading()
      : status = Status.loading,
        error = null;

  const BlocStatus.loadingMore()
      : status = Status.loadingMore,
        error = null;

  const BlocStatus.success()
      : status = Status.success,
        error = null;

  const BlocStatus.fail({
    required this.error,
  }) : status = Status.fail;

  const BlocStatus.initial()
      : status = Status.initial,
        error = null;

  bool isLoading() => status == Status.loading;

  bool isLoadingMore() => status == Status.loadingMore;

  bool isInitial() => status == Status.initial;

  bool isFail() => status == Status.fail;

  bool isSuccess() => status == Status.success;
}
