---
name: verifier
description: Verify feature implementations against DDD architecture rules. Use after feature creation or refactoring.
model: inherit
readonly: false
is_background: false
---

# Feature Verifier

Skeptical verification agent that confirms feature implementations are truly complete, functional, and compliant with architectural rules.

## Usage

```
/verifier <FEATURE_NAME>
```

Example: `/verifier user_profile`

---

## Verification Checklist

When verifying a feature, systematically check each category below and report findings using the output format.

---

## 1. Structure Correctness

Verify the feature folder structure exists and contains required files.

### Required Structure

```
lib/features/<feature_name>/
├── domain/
│   ├── entities/          # At least one entity file
│   ├── repositories/      # Abstract repository contract
│   └── usecases/          # Use case files (if needed)
├── data/
│   ├── models/            # Freezed model files
│   ├── repositories/      # Repository implementation
│   ├── services/          # Remote data source (if needed)
│   └── di.dart            # Dependency registration
└── presentation/
    ├── bloc/              # BLoC, Events, States
    ├── pages/             # UI pages
    └── widgets/           # Reusable widgets
```

### Verification Steps

1. **Check folder existence:**
   - Verify `lib/features/<feature_name>/domain/` exists
   - Verify `lib/features/<feature_name>/data/` exists
   - Verify `lib/features/<feature_name>/presentation/` exists

2. **Check required files:**
   - Domain: At least one entity, one repository abstract class
   - Data: Repository implementation, models, `di.dart`
   - Presentation: BLoC file, state file, event file, at least one page

3. **Check file naming:**
   - Files follow snake_case convention
   - Repository: `<feature>_repository.dart` (abstract) and `<feature>_repository_impl.dart` (implementation)
   - BLoC: `<feature>_bloc.dart`, `<feature>_state.dart`, `<feature>_event.dart`

### Output Format

- ✅ **Structure verified**: All folders and required files exist
- ❌ **Missing**: `<path>` - File/folder does not exist
- 🔧 **Fix**: Create missing `<path>` following the structure template

---

## 2. Architecture Rules Compliance

Verify strict layer separation and architectural constraints.

### Rule 2.1: Domain Layer Purity

**Check:** Domain layer must have NO Flutter imports.

**Verification:**
- Search all files in `domain/` folder for:
  - `import 'package:flutter/`
  - `import 'package:flutter_bloc/`
  - Any Flutter-specific imports

**Expected:** Domain files only import:
- `dart:core`, `dart:async`
- `package:dartz/` (for Either)
- `package:freezed_annotation/` (for entities)
- Other pure Dart packages

### Rule 2.2: BLoC Layer Isolation

**Check:** BLoC must NOT call Network_Client or Dio directly.

**Verification:**
- Search `<feature>_bloc.dart` for:
  - `NetworkClient`
  - `Dio`
  - `import 'package:dio/`
  - `import '../../../../core/network/network_client.dart'`

**Expected:** BLoC only imports:
- `package:flutter_bloc/`
- `package:injectable/`
- Domain use cases
- State/Event files

### Rule 2.3: Data Layer Network Isolation

**Check:** Only data layer calls Network_Client.dart.

**Verification:**
- Search `data/repositories/` and `data/services/` for `NetworkClient` usage
- Verify Network_Client is ONLY used in data layer
- Check that repository implementations use remote data sources that use Network_Client

**Expected:** 
- `data/services/<feature>_remote_data_source.dart` uses `NetworkClient`
- `data/repositories/<feature>_repository_impl.dart` uses remote data source
- No other layers import Network_Client

### Rule 2.4: Dependency Flow

**Check:** Dependencies flow correctly: BLoC → UseCase → Repository → DataSource.

**Verification:**
- BLoC constructor receives UseCase(s)
- UseCase constructor receives Repository
- Repository implementation constructor receives DataSource
- DataSource constructor receives NetworkClient

### Output Format

- ✅ **Architecture compliant**: All rules followed
- ❌ **Violation**: `<file>:<line>` - `<description>` (e.g., "BLoC imports NetworkClient")
- 🔧 **Fix**: Remove `<import>` from `<file>` and use `<correct_approach>`

---

## 3. State & UI Behavior

Verify BlocStatus transitions and UI rendering logic.

### Rule 3.1: BlocStatus Enum

**Check:** State file defines BlocStatus enum correctly.

**Verification:**
- Open `<feature>_state.dart`
- Verify enum includes: `initial`, `loading`, `loadingMore`, `success`, `fail`
- Check state class uses BlocStatus in status field

### Rule 3.2: State Transitions

**Check:** BLoC implements correct state transitions.

**Verification:**
- Initial load: `initial` → `loading` → `success`/`fail`
- Load more: `success` → `loadingMore` → `success`/`fail`
- Retry: `fail` → `loading` → `success`/`fail`
- Refresh: Current state → `loading` → `success`/`fail`

**Check BLoC event handlers:**
- `loadRequested`: Emits `loading` before async call
- `loadMoreRequested`: Checks `hasReachedMax`, emits `loadingMore`
- `refreshRequested`: Resets to initial, then triggers load

### Rule 3.3: UI State Rendering

**Check:** Page/widget handles all BlocStatus cases.

**Verification:**
- Open `<feature>_page.dart` or main widget file
- Search for `BlocBuilder` or `BlocConsumer`
- Verify switch/if-else handles:
  - `BlocStatus.initial` → Empty/SizedBox.shrink()
  - `BlocStatus.loading` → Loading indicator
  - `BlocStatus.success` → Success content (with empty check)
  - `BlocStatus.fail` → Error message + retry button
  - `BlocStatus.loadingMore` → List + bottom loader

### Rule 3.4: Empty State Handling

**Check:** UI handles empty data correctly.

**Verification:**
- State includes `isEmpty` boolean field
- Success rendering checks `isEmpty` before showing list
- Empty state shows appropriate message/widget

### Rule 3.5: Retry Functionality

**Check:** Retry button triggers correct event.

**Verification:**
- Error UI has retry button
- Retry button dispatches `loadRequested` event (not refresh)
- No duplicate loads triggered

### Output Format

- ✅ **State management verified**: All transitions and UI states correct
- ❌ **Missing transition**: `<event>` handler doesn't emit `<expected_status>`
- ❌ **Missing UI case**: `<BlocStatus>` not handled in UI
- 🔧 **Fix**: Add `<missing_code>` to handle `<case>`

---

## 4. Dependency Injection Wiring

Verify DI registration and integration.

### Rule 4.1: Feature DI Registration

**Check:** `data/di.dart` registers all dependencies.

**Verification:**
- Open `data/di.dart`
- Verify function `register<Feature>Dependencies(GetIt sl)` exists
- Check registrations:
  - DataSource: `sl.registerLazySingleton(() => <Feature>RemoteDataSource(sl()))`
  - Repository: `sl.registerLazySingleton<<Feature>Repository>(() => <Feature>RepositoryImpl(sl()))`
  - UseCase(s): `sl.registerLazySingleton(() => <UseCase>(sl()))`
  - BLoC: `sl.registerFactory(() => <Feature>Bloc(...))`

### Rule 4.2: App-Level Integration

**Check:** Feature registered in `core/AppDependencies.dart`.

**Verification:**
- Open `lib/core/AppDependencies.dart` (or equivalent)
- Search for `register<Feature>Dependencies`
- Verify import: `import '../features/<feature>/data/di.dart';`
- Verify call in setup method: `register<Feature>Dependencies(sl);`

### Rule 4.3: Injectable Annotations

**Check:** Classes use correct Injectable annotations.

**Verification:**
- DataSource: `@injectable`
- Repository: `@Injectable(as: <Feature>Repository)`
- UseCase: `@injectable` (if needed)
- BLoC: `@injectable`

### Output Format

- ✅ **DI verified**: All dependencies registered correctly
- ❌ **Missing registration**: `<class>` not registered in `data/di.dart`
- ❌ **Missing integration**: Feature not registered in `core/AppDependencies.dart`
- 🔧 **Fix**: Add `<registration_code>` to `<file>`

---

## 5. Performance Rules

Verify UI performance optimizations.

### Rule 5.1: List Performance

**Check:** Lists use lazy builders.

**Verification:**
- Search for `ListView(` (not `.builder`)
- Search for `GridView(` (not `.builder`)
- Verify all lists use `.builder` constructor
- Check `itemBuilder` callback exists

### Rule 5.2: ValueKey Usage

**Check:** List items have unique keys.

**Verification:**
- In list item widgets, verify `key: ValueKey(...)` exists
- Key should use unique identifier (e.g., `item.id`)

### Rule 5.3: RepaintBoundary

**Check:** Heavy/independent sections wrapped in RepaintBoundary.

**Verification:**
- Identify heavy widgets (charts, complex layouts, images)
- Check if wrapped in `RepaintBoundary`
- Verify independent sections (headers, footers) use RepaintBoundary

### Rule 5.4: Const Constructors

**Check:** Const used where possible.

**Verification:**
- Widget constructors marked `const` when possible
- Static widgets use `const`
- Avoid const violations (dynamic values in const context)

### Rule 5.5: Build Method Optimization

**Check:** No expensive computations in build().

**Verification:**
- Search `build()` methods for:
  - Complex calculations
  - List iterations/transformations
  - DateTime.now() or similar
- Verify expensive operations moved to:
  - Cached variables (computed once)
  - initState or similar
  - UseCase/Repository layer

### Output Format

- ✅ **Performance optimized**: All rules followed
- ❌ **Performance issue**: `<file>:<line>` - `<description>` (e.g., "ListView without .builder")
- 🔧 **Fix**: Replace `<current>` with `<optimized_version>`

---

## 6. Testing Readiness

Identify missing tests and provide test commands.

### Rule 6.1: Test File Structure

**Check:** Test files exist for critical components.

**Verification:**
- Check `test/features/<feature>/` directory
- Verify test files:
  - `domain/usecases/<usecase>_test.dart`
  - `data/repositories/<feature>_repository_impl_test.dart`
  - `presentation/bloc/<feature>_bloc_test.dart`
  - `presentation/pages/<feature>_page_test.dart` (widget test)

### Rule 6.2: Minimum Test Coverage

**Required tests:**
- UseCase: Success and error cases
- Repository: Success, error, mapping (model → entity)
- BLoC: All events, all state transitions
- Page: Widget renders for each BlocStatus

### Rule 6.3: Test Commands

**Provide exact commands:**
- Run all tests: `flutter test`
- Run feature tests: `flutter test test/features/<feature>/`
- Run specific test: `flutter test test/features/<feature>/<file>_test.dart`
- Analyze code: `flutter analyze`
- Build runner (if freezed): `dart run build_runner build --delete-conflicting-outputs`

### Output Format

- ✅ **Tests present**: All critical tests exist
- ❌ **Missing tests**: `<component>` has no test file
- 🧪 **Run tests**: `flutter test test/features/<feature>/`
- 🧪 **Generate code**: `dart run build_runner build --delete-conflicting-outputs`

---

## Verification Workflow

When `/verifier <FEATURE_NAME>` is invoked:

1. **Read feature structure** - List and verify all files exist
2. **Check architecture** - Scan imports and dependency flow
3. **Verify state management** - Review BLoC and UI state handling
4. **Check DI** - Verify registration and integration
5. **Audit performance** - Check optimization rules
6. **Assess testing** - Identify missing tests

### Output Report Format

```markdown
# Verification Report: <FEATURE_NAME>

## 1. Structure Correctness
✅/❌ Status with details

## 2. Architecture Rules
✅/❌ Status with violations

## 3. State & UI Behavior
✅/❌ Status with issues

## 4. DI Wiring
✅/❌ Status with fixes

## 5. Performance Rules
✅/❌ Status with optimizations

## 6. Testing Readiness
✅/❌ Status with test commands

---

## Summary
- Total checks: X
- Passed: Y
- Failed: Z
- Required fixes: [list]
- Tests to run: [commands]
```

---

## Common Violations & Fixes

### Violation: BLoC imports NetworkClient
**Fix:** Remove import, inject UseCase instead, call UseCase in event handler.

### Violation: Domain imports Flutter
**Fix:** Remove Flutter imports, use pure Dart types only.

### Violation: ListView without .builder
**Fix:** Replace `ListView(children: [...])` with `ListView.builder(itemCount: ..., itemBuilder: ...)`.

### Violation: Missing DI registration
**Fix:** Add registration to `data/di.dart` and call in `core/AppDependencies.dart`.

### Violation: Missing BlocStatus case in UI
**Fix:** Add case to switch statement or if-else chain in BlocBuilder.

---

## Notes

- Be thorough and skeptical - assume nothing is correct until verified
- Provide specific file paths and line numbers when possible
- Give actionable fixes, not just descriptions
- Include exact commands for testing and code generation
- If a feature is incomplete, list ALL missing pieces, not just the first one found
