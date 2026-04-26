---
name: ddd-architect
description: Build complete Flutter features with Feature-first DDD architecture (domain/data/presentation), BLoC state management, get_it DI, and performance-optimized UI. Use when creating new features, building screens with business logic, or scaffolding domain-driven components. Follows BlocStatus pattern (initial, loading, loadingMore, success, fail) and strict layer separation.
---

# DDD Feature Architect

Generates complete, production-ready Flutter features following Feature-first DDD with strict layer separation, BLoC state management, and performance optimization.

## Quick Start

When the user requests a new feature, ask for:

1. **Feature name** (e.g., "user_profile", "payment_checkout")
2. **Main entity fields** or domain data structure
3. **API endpoints** (if known, else mark TODO)
4. **Key use cases** (e.g., "fetch profile", "update settings")

Then generate the complete feature structure.

---

## Architecture Rules

### Layer Separation

```
feature_name/
├── domain/
│   ├── entities/          # Pure domain models
│   ├── repositories/      # Abstract contracts
│   └── usecases/          # Business logic
├── data/
│   ├── models/            # Freezed DTOs
│   ├── repositories/      # Repository implementations
│   ├── services/          # API/remote data sources
│   └── di.dart            # Feature DI registration
└── presentation/
    ├── bloc/              # BLoC + Events + States
    ├── pages/             # UI screens (no logic)
    └── widgets/           # Dumb, reusable widgets
```

### Critical Constraints

- **BLoC ONLY** for state management
- **BlocStatus** states: `initial`, `loading`, `loadingMore`, `success`, `fail`
- **No API calls from BLoC** → BLoC calls UseCases → UseCases call Repository
- **Data layer uses Network_Client.dart** (Dio wrapper) exclusively
- **Map Data Models → Domain Entities** at repository boundary
- **DI via get_it**: Register in `feature/data/di.dart`

---

## Generation Workflow

### Step 1: Create Folder Structure

Always output the exact folder tree first:

```
lib/features/<feature_name>/
├── domain/
│   ├── entities/<entity_name>.dart
│   ├── repositories/<feature>_repository.dart
│   └── usecases/
├── data/
│   ├── models/<model_name>.dart
│   ├── repositories/<feature>_repository_impl.dart
│   ├── services/<feature>_remote_data_source.dart
│   └── di.dart
└── presentation/
    ├── bloc/
    │   ├── <feature>_bloc.dart
    │   ├── <feature>_event.dart
    │   └── <feature>_state.dart
    ├── pages/<feature>_page.dart
    └── widgets/
```

### Step 2: Domain Layer

#### Entity Template

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part '<entity>.freezed.dart';

@freezed
class <EntityName> with _$<EntityName> {
  const factory <EntityName>({
    required String id,
    required String name,
    // Add domain fields...
  }) = _<EntityName>;
}
```

#### Repository Contract Template

```dart
import 'package:dartz/dartz.dart';
import '../entities/<entity>.dart';

abstract class <Feature>Repository {
  Future<Either<Exception, <Entity>>> get<Entity>(String id);
  Future<Either<Exception, List<Entity>>> getAll();
  // Add methods per use case
}
```

#### UseCase Template

```dart
import 'package:dartz/dartz.dart';
import '../entities/<entity>.dart';
import '../repositories/<feature>_repository.dart';

class Get<Entity>UseCase {
  final <Feature>Repository repository;

  Get<Entity>UseCase(this.repository);

  Future<Either<Exception, <Entity>>> call(String id) async {
    return await repository.get<Entity>(id);
  }
}
```

### Step 3: Data Layer

#### Model Template (Freezed + JSON)

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/<entity>.dart';

part '<model>.freezed.dart';
part '<model>.g.dart';

@freezed
class <Model>Model with _$<Model>Model {
  const <Model>Model._();

  const factory <Model>Model({
    required String id,
    required String name,
    @JsonKey(name: 'custom_field') String? customField,
  }) = _<Model>Model;

  factory <Model>Model.fromJson(Map<String, dynamic> json) =>
      _$<Model>ModelFromJson(json);

  // Mapper to domain entity
  <Entity> toEntity() => <Entity>(id: id, name: name);

  // Mapper from domain entity
  factory <Model>Model.fromEntity(<Entity> entity) =>
      <Model>Model(id: entity.id, name: entity.name);
}
```

#### Remote Data Source Template

```dart
import 'package:injectable/injectable.dart';
import '../../../../core/network/network_client.dart';
import '../models/<model>.dart';

@injectable
class <Feature>RemoteDataSource {
  final NetworkClient _client;

  <Feature>RemoteDataSource(this._client);

  Future<List<<Model>Model>> fetchAll() async {
    final response = await _client.get('/api/<endpoint>');
    return (response.data as List)
        .map((json) => <Model>Model.fromJson(json))
        .toList();
  }

  Future<<Model>Model> fetchById(String id) async {
    final response = await _client.get('/api/<endpoint>/$id');
    return <Model>Model.fromJson(response.data);
  }
}
```

#### Repository Implementation Template

```dart
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../domain/entities/<entity>.dart';
import '../../domain/repositories/<feature>_repository.dart';
import '../services/<feature>_remote_data_source.dart';

@Injectable(as: <Feature>Repository)
class <Feature>RepositoryImpl implements <Feature>Repository {
  final <Feature>RemoteDataSource _remoteDataSource;

  <Feature>RepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Exception, <Entity>>> get<Entity>(String id) async {
    try {
      final model = await _remoteDataSource.fetchById(id);
      return Right(model.toEntity());
    } catch (e) {
      return Left(Exception('Failed to fetch: $e'));
    }
  }

  @override
  Future<Either<Exception, List<<Entity>>>> getAll() async {
    try {
      final models = await _remoteDataSource.fetchAll();
      return Right(models.map((m) => m.toEntity()).toList());
    } catch (e) {
      return Left(Exception('Failed to fetch all: $e'));
    }
  }
}
```

#### DI Registration Template (di.dart)

```dart
import 'package:get_it/get_it.dart';
import 'domain/repositories/<feature>_repository.dart';
import 'domain/usecases/<usecase>.dart';
import 'data/repositories/<feature>_repository_impl.dart';
import 'data/services/<feature>_remote_data_source.dart';
import 'presentation/bloc/<feature>_bloc.dart';

void register<Feature>Dependencies(GetIt sl) {
  // Data sources
  sl.registerLazySingleton(() => <Feature>RemoteDataSource(sl()));

  // Repositories
  sl.registerLazySingleton<<Feature>Repository>(
    () => <Feature>RepositoryImpl(sl()),
  );

  // Use cases
  sl.registerLazySingleton(() => Get<Entity>UseCase(sl()));

  // BLoC
  sl.registerFactory(() => <Feature>Bloc(get<Entity>: sl()));
}
```

**REMINDER**: User must add this to `core/AppDependencies.dart`:

```dart
import '../features/<feature>/data/di.dart';

// In setup method:
register<Feature>Dependencies(sl);
```

### Step 4: Presentation Layer

#### BLoC State Template

```dart
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/<entity>.dart';

part '<feature>_state.freezed.dart';

enum BlocStatus { initial, loading, loadingMore, success, fail }

@freezed
class <Feature>State with _$<Feature>State {
  const factory <Feature>State({
    @Default(BlocStatus.initial) BlocStatus status,
    List<<Entity>>? data,
    String? errorMessage,
    @Default(false) bool isEmpty,
    @Default(false) bool hasReachedMax,
  }) = _<Feature>State;
}
```

#### BLoC Event Template

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part '<feature>_event.freezed.dart';

@freezed
class <Feature>Event with _$<Feature>Event {
  const factory <Feature>Event.loadRequested() = _LoadRequested;
  const factory <Feature>Event.loadMoreRequested() = _LoadMoreRequested;
  const factory <Feature>Event.refreshRequested() = _RefreshRequested;
}
```

#### BLoC Template

```dart
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/<usecase>.dart';
import '<feature>_event.dart';
import '<feature>_state.dart';

@injectable
class <Feature>Bloc extends Bloc<<Feature>Event, <Feature>State> {
  final Get<Entity>UseCase _get<Entity>;

  <Feature>Bloc({required Get<Entity>UseCase get<Entity>})
      : _get<Entity> = get<Entity>,
        super(const <Feature>State()) {
    on<<Feature>Event>((event, emit) async {
      await event.when(
        loadRequested: () => _onLoadRequested(emit),
        loadMoreRequested: () => _onLoadMoreRequested(emit),
        refreshRequested: () => _onRefreshRequested(emit),
      );
    });
  }

  Future<void> _onLoadRequested(Emitter<<Feature>State> emit) async {
    emit(state.copyWith(status: BlocStatus.loading));

    final result = await _get<Entity>.call();

    result.fold(
      (error) => emit(state.copyWith(
        status: BlocStatus.fail,
        errorMessage: error.toString(),
      )),
      (data) => emit(state.copyWith(
        status: BlocStatus.success,
        data: data,
        isEmpty: data.isEmpty,
      )),
    );
  }

  Future<void> _onLoadMoreRequested(Emitter<<Feature>State> emit) async {
    if (state.hasReachedMax) return;
    emit(state.copyWith(status: BlocStatus.loadingMore));
    // Implement pagination logic...
  }

  Future<void> _onRefreshRequested(Emitter<<Feature>State> emit) async {
    emit(const <Feature>State());
    add(const <Feature>Event.loadRequested());
  }
}
```

#### Page Template (UI)

```dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/di/service_locator.dart';
import '../bloc/<feature>_bloc.dart';
import '../bloc/<feature>_event.dart';
import '../bloc/<feature>_state.dart';

class <Feature>Page extends StatelessWidget {
  const <Feature>Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<<Feature>Bloc>()
        ..add(const <Feature>Event.loadRequested()),
      child: const _<Feature>View(),
    );
  }
}

class _<Feature>View extends StatelessWidget {
  const _<Feature>View();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('<Feature>')),
      body: BlocBuilder<<Feature>Bloc, <Feature>State>(
        builder: (context, state) {
          switch (state.status) {
            case BlocStatus.initial:
              return const SizedBox.shrink();
            case BlocStatus.loading:
              return const Center(child: CircularProgressIndicator());
            case BlocStatus.success:
              return _buildSuccess(context, state);
            case BlocStatus.fail:
              return _buildError(context, state);
            case BlocStatus.loadingMore:
              return _buildListWithLoader(context, state);
          }
        },
      ),
    );
  }

  Widget _buildSuccess(BuildContext context, <Feature>State state) {
    if (state.isEmpty) {
      return const Center(child: Text('No data available'));
    }

    return RefreshIndicator(
      onRefresh: () async {
        context.read<<Feature>Bloc>().add(
          const <Feature>Event.refreshRequested(),
        );
      },
      child: ListView.builder(
        itemCount: state.data?.length ?? 0,
        itemBuilder: (context, index) {
          final item = state.data![index];
          return ListTile(
            key: ValueKey(item.id),
            title: Text(item.name),
          );
        },
      ),
    );
  }

  Widget _buildError(BuildContext context, <Feature>State state) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Error: ${state.errorMessage}'),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => context.read<<Feature>Bloc>().add(
              const <Feature>Event.loadRequested(),
            ),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  Widget _buildListWithLoader(BuildContext context, <Feature>State state) {
    return Column(
      children: [
        Expanded(child: _buildSuccess(context, state)),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircularProgressIndicator(),
        ),
      ],
    );
  }
}
```

---

## Performance Optimization Checklist

When generating UI code, ensure:

- [ ] `const` constructors wherever possible
- [ ] `ValueKey` for list items with unique IDs
- [ ] `ListView.builder` for lists (not `ListView()`)
- [ ] `RepaintBoundary` around heavy widgets
- [ ] Computed values cached outside `build()` method
- [ ] Switch statements for BlocStatus rendering

---

## Post-Generation Instructions

After generating the feature:

### 1. Register Dependencies

Add to `lib/core/AppDependencies.dart`:

```dart
import '../features/<feature_name>/data/di.dart';

// In setup:
register<Feature>Dependencies(sl);
```

### 2. Run Code Generation

```bash
dart run build_runner build --delete-conflicting-outputs
```

### 3. Testing Checklist

- [ ] Unit tests for UseCases
- [ ] Unit tests for Repository
- [ ] Widget tests for Pages
- [ ] BLoC tests with mock use cases

---

## Common Patterns

### Pagination Pattern

```dart
Future<void> _onLoadMoreRequested(Emitter<State> emit) async {
  if (state.hasReachedMax || state.status == BlocStatus.loadingMore) {
    return;
  }

  emit(state.copyWith(status: BlocStatus.loadingMore));

  final nextPage = state.currentPage + 1;
  final result = await _getUseCase(page: nextPage);

  result.fold(
    (error) => emit(state.copyWith(
      status: BlocStatus.fail,
      errorMessage: error.toString(),
    )),
    (newData) => emit(state.copyWith(
      status: BlocStatus.success,
      data: [...state.data!, ...newData],
      currentPage: nextPage,
      hasReachedMax: newData.length < pageSize,
    )),
  );
}
```

### Scroll Detection for Pagination

```dart
class _ViewState extends State<View> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_isBottom) {
      context.read<Bloc>().add(const Event.loadMoreRequested());
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
```

---

## Detailed Examples

For complete, production-ready examples, see [examples.md](examples.md):

1. Simple CRUD Feature (User Profile)
2. Paginated List (Course Catalog)
3. Multiple Use Cases (Shopping Cart)
4. Repository with Retry Logic
5. Complex State Management
6. Performance-Optimized Widgets

---

## Summary

This skill generates production-ready Flutter features with:
- Strict DDD layer separation
- BLoC-only state management with BlocStatus
- get_it dependency injection
- Network_Client.dart for all API calls
- Performance-optimized UI
- Complete testing strategy

Always ask for feature name, entity structure, and endpoints before generation.
