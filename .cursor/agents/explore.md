---
name: explore
description: Map and analyze features in the codebase. Use to understand feature structure, data flow, and identify rule violations.
model: inherit
readonly: false
is_background: false
---

# Feature Explorer

Map and analyze features in the Flutter codebase to understand structure, data flow, and identify architectural rule violations.

## Usage

```
/explore <FEATURE_NAME>
```

Example: `/explore home` or `/explore course_details`

---

## Exploration Tasks

When `/explore <FEATURE_NAME>` is invoked, systematically perform these tasks:

### Task 1: Find All Related Files

Search and catalog all files related to the feature across all layers.

#### Search Strategy

1. **Feature Root Directory**
   - Check if `lib/features/<feature_name>/` exists
   - List all subdirectories: `domain/`, `data/`, `presentation/`

2. **Domain Layer Files**
   - `domain/entities/*.dart` - Entity files
   - `domain/repositories/*.dart` - Repository contracts
   - `domain/usecases/*.dart` - Use case files

3. **Data Layer Files**
   - `data/models/*.dart` - Freezed model files
   - `data/repositories/*_repository_impl.dart` - Repository implementations
   - `data/services/*.dart` - Remote data sources
   - `data/di.dart` - Dependency injection registration

4. **Presentation Layer Files**
   - `presentation/bloc/*_bloc.dart` - BLoC files
   - `presentation/bloc/*_event.dart` - Event files
   - `presentation/bloc/*_state.dart` - State files
   - `presentation/pages/*.dart` - Page files
   - `presentation/widgets/*.dart` - Widget files

5. **Core/Shared Files**
   - Check `lib/core/` for shared utilities used by feature
   - Check routing files for feature routes
   - Check `lib/core/AppDependencies.dart` for DI registration

6. **Test Files**
   - `test/features/<feature_name>/` - Test files

#### Output Format

```markdown
## Files Found

### Domain Layer
- `lib/features/<feature>/domain/entities/<entity>.dart`
- `lib/features/<feature>/domain/repositories/<feature>_repository.dart`
- `lib/features/<feature>/domain/usecases/<usecase>.dart`

### Data Layer
- `lib/features/<feature>/data/models/<model>.dart`
- `lib/features/<feature>/data/repositories/<feature>_repository_impl.dart`
- `lib/features/<feature>/data/services/<feature>_remote_data_source.dart`
- `lib/features/<feature>/data/di.dart`

### Presentation Layer
- `lib/features/<feature>/presentation/bloc/<feature>_bloc.dart`
- `lib/features/<feature>/presentation/bloc/<feature>_event.dart`
- `lib/features/<feature>/presentation/bloc/<feature>_state.dart`
- `lib/features/<feature>/presentation/pages/<feature>_page.dart`
- `lib/features/<feature>/presentation/widgets/*.dart`

### Core/Shared
- `lib/core/AppDependencies.dart` (DI registration)
- `lib/core/routes/*.dart` (routing)

### Tests
- `test/features/<feature>/**/*_test.dart`
```

---

### Task 2: Identify Data Flow End-to-End

Trace the complete data flow from UI interaction to API response and back.

#### Flow Mapping Steps

1. **Start from UI Entry Point**
   - Identify the main page/widget that triggers data loading
   - Find where `BlocProvider` is created
   - Locate initial event dispatch (usually in `initState` or `create`)

2. **Trace Event → BLoC**
   - Read event file to see all event types
   - Read BLoC file to see event handlers
   - Map each event to its handler method

3. **Trace BLoC → UseCase**
   - Check BLoC constructor for injected UseCases
   - Find where UseCase methods are called
   - Identify which UseCase handles which event

4. **Trace UseCase → Repository**
   - Read UseCase file(s)
   - Find repository method calls
   - Note repository interface being used

5. **Trace Repository → Data Source**
   - Read repository implementation
   - Find remote data source calls
   - Identify Network_Client usage

6. **Trace Data Source → Network**
   - Read remote data source file
   - Find Network_Client method calls (get/post/put/delete)
   - Extract API endpoints

7. **Trace Response Back**
   - Model parsing (fromJson)
   - Model → Entity mapping (toEntity)
   - Entity returned through layers
   - State updates in BLoC
   - UI rebuilds

#### Output Format

```markdown
## Data Flow Diagram

```
UI (Page/Widget)
  │
  ├─> Event: <EventName>
  │     │
  │     └─> BLoC: _on<EventName>()
  │           │
  │           └─> UseCase: <UseCaseName>.call()
  │                 │
  │                 └─> Repository: <MethodName>()
  │                       │
  │                       └─> RemoteDataSource: <MethodName>()
  │                             │
  │                             └─> NetworkClient: get/post/put/delete('<endpoint>')
  │                                   │
  │                                   └─> API Response
  │                                         │
  │                                         └─> Model.fromJson()
  │                                               │
  │                                               └─> Model.toEntity()
  │                                                     │
  │                                                     └─> Either<Exception, Entity>
  │                                                           │
  │                                                           └─> BLoC: emit(State)
  │                                                                 │
  │                                                                 └─> UI: BlocBuilder rebuilds
```

### Endpoints Found
- `GET /api/<endpoint>` - Description
- `POST /api/<endpoint>` - Description
- etc.

### Key Methods
- **BLoC**: `_onLoadRequested()`, `_onLoadMoreRequested()`, etc.
- **UseCase**: `Get<Entity>UseCase.call()`, etc.
- **Repository**: `get<Entity>()`, `getAll()`, etc.
- **DataSource**: `fetchById()`, `fetchAll()`, etc.
```

---

### Task 3: Highlight Rule Violations

Systematically check for architectural rule violations.

#### Violation Checks

1. **BLoC Doing API Calls**
   - Search BLoC file for:
     - `NetworkClient`
     - `Dio`
     - `import 'package:dio/'`
     - `import '../../../../core/network/network_client.dart'`
   - **Expected**: BLoC only imports UseCases, Events, States

2. **Domain Importing Flutter**
   - Search all domain files for:
     - `import 'package:flutter/'`
     - `import 'package:flutter_bloc/'`
     - Any Flutter-specific imports
   - **Expected**: Domain only imports pure Dart packages

3. **Missing DI Registration**
   - Check `data/di.dart` exists
   - Verify all classes registered:
     - DataSource
     - Repository (as interface)
     - UseCase(s)
     - BLoC
   - Check `core/AppDependencies.dart` calls feature DI function

4. **List Performance Anti-patterns**
   - Search for `ListView(` without `.builder`
   - Search for `GridView(` without `.builder`
   - Search for `Column(children: list.map(...))` patterns
   - Check for missing `ValueKey` in list items
   - Check for missing `RepaintBoundary` around heavy widgets

5. **State Management Violations**
   - Check for `setState` usage in pages/widgets
   - Check for `ChangeNotifier` or `ValueNotifier` usage
   - Verify BLoC is the only state management solution

6. **Missing States**
   - Check state file for `BlocStatus` enum
   - Verify all states: `initial`, `loading`, `loadingMore`, `success`, `fail`
   - Check UI handles all states

7. **Direct DateTime Usage**
   - Search for `DateTime.now()` in presentation layer
   - **Expected**: Use injected clock abstraction

8. **Network_Client Outside Data Layer**
   - Search entire codebase for `NetworkClient` imports
   - Verify only data layer uses it

#### Output Format

```markdown
## Rule Violations

### Critical 🔴
- ❌ **BLoC doing API calls**: `<file>:<line>` - BLoC imports NetworkClient
- ❌ **Domain importing Flutter**: `<file>:<line>` - Domain file imports `package:flutter/`

### High 🟠
- ❌ **Missing DI registration**: `<class>` not registered in `data/di.dart`
- ❌ **Network_Client outside data layer**: `<file>:<line>` - Used in presentation layer

### Medium 🟡
- ⚠️ **List performance issue**: `<file>:<line>` - Using `ListView(` instead of `ListView.builder`
- ⚠️ **Missing ValueKey**: `<file>:<line>` - List items missing unique keys
- ⚠️ **Missing state**: UI doesn't handle `BlocStatus.loadingMore`

### Low 🟢
- ℹ️ **Missing RepaintBoundary**: `<file>:<line>` - Heavy widget not wrapped
- ℹ️ **Direct DateTime usage**: `<file>:<line>` - Using `DateTime.now()` directly
```

---

### Task 4: Provide Clean Summary

Synthesize findings into actionable insights.

#### Summary Sections

1. **Feature Entry Points**
   - Route path (if using go_router or similar)
   - Main page file
   - Initial event triggered

2. **Primary BLoC(s)**
   - BLoC class name
   - Key events handled
   - State structure

3. **Repository Contract + Implementation**
   - Repository interface methods
   - Implementation class
   - Data source used

4. **Endpoints Used**
   - List all API endpoints found
   - HTTP methods
   - Parameters expected

5. **Missing States**
   - Check if all BlocStatus cases are handled
   - Identify missing UI states (empty, loadingMore, retry)

6. **Quick Next Steps**
   - Prioritized list of fixes needed
   - Suggested improvements

#### Output Format

```markdown
## Feature Summary: <FEATURE_NAME>

### Entry Points
- **Route**: `/feature_name` (defined in `lib/core/routes/app_router.dart`)
- **Page**: `lib/features/<feature>/presentation/pages/<feature>_page.dart`
- **Initial Event**: `<Feature>Event.loadRequested()` dispatched on page creation

### Primary BLoC
- **Class**: `<Feature>Bloc`
- **File**: `lib/features/<feature>/presentation/bloc/<feature>_bloc.dart`
- **Events Handled**:
  - `loadRequested` → `_onLoadRequested()`
  - `loadMoreRequested` → `_onLoadMoreRequested()`
  - `refreshRequested` → `_onRefreshRequested()`
- **State Structure**:
  - `status`: BlocStatus enum
  - `data`: List<Entity>?
  - `errorMessage`: String?
  - `isEmpty`: bool
  - `hasReachedMax`: bool

### Repository Contract + Implementation
- **Interface**: `<Feature>Repository` (`domain/repositories/<feature>_repository.dart`)
  - `Future<Either<Exception, List<Entity>>> getAll()`
  - `Future<Either<Exception, Entity>> getById(String id)`
- **Implementation**: `<Feature>RepositoryImpl` (`data/repositories/<feature>_repository_impl.dart`)
- **Data Source**: `<Feature>RemoteDataSource` (`data/services/<feature>_remote_data_source.dart`)

### Endpoints Used
- `GET /api/<endpoint>` - Fetch all items
- `GET /api/<endpoint>/{id}` - Fetch single item
- `POST /api/<endpoint>` - Create item (if applicable)
- `PUT /api/<endpoint>/{id}` - Update item (if applicable)
- `DELETE /api/<endpoint>/{id}` - Delete item (if applicable)

### Missing States
- ❌ UI doesn't handle `BlocStatus.loadingMore` (pagination loading indicator missing)
- ⚠️ Empty state handling incomplete (shows loading forever if empty)
- ⚠️ Retry functionality missing in error state

### Quick Next Steps

#### Priority 1 (Critical)
1. **Fix BLoC API calls**: Remove NetworkClient import, inject UseCase instead
2. **Fix Domain Flutter imports**: Remove Flutter dependencies from domain layer

#### Priority 2 (High)
3. **Complete DI registration**: Register all dependencies in `data/di.dart` and `core/AppDependencies.dart`
4. **Fix Network_Client usage**: Ensure only data layer uses NetworkClient

#### Priority 3 (Medium)
5. **Optimize lists**: Replace `ListView(` with `ListView.builder`
6. **Add missing states**: Handle `loadingMore` and empty states in UI
7. **Add ValueKeys**: Add unique keys to list items

#### Priority 4 (Low)
8. **Add RepaintBoundary**: Wrap heavy widgets for performance
9. **Replace DateTime.now()**: Use clock abstraction if needed
```

---

## Exploration Workflow

When `/explore <FEATURE_NAME>` is invoked:

1. **Search for Feature Files**
   - Use `glob_file_search` to find all files matching `**/features/<feature>/**/*.dart`
   - Use `grep` to search for feature name in routing files
   - List directory structure using `list_dir`

2. **Read Key Files**
   - Read BLoC, Event, State files
   - Read Repository interface and implementation
   - Read UseCase files
   - Read RemoteDataSource file
   - Read DI registration file
   - Read main page file

3. **Analyze Imports**
   - Check all imports in each file
   - Identify violations (Flutter in domain, NetworkClient in BLoC, etc.)

4. **Trace Data Flow**
   - Follow method calls from UI → BLoC → UseCase → Repository → DataSource → Network
   - Document the complete flow

5. **Check Performance**
   - Search for list anti-patterns
   - Check for missing keys
   - Verify const constructors

6. **Generate Report**
   - Compile findings into structured output
   - Prioritize violations
   - Suggest fixes

---

## Output Report Format

```markdown
# Feature Exploration Report: <FEATURE_NAME>

## 📁 Files Found

[Grouped by layer as shown above]

---

## 🔄 Data Flow

[Text diagram as shown above]

---

## ⚠️ Rule Violations

[Violations grouped by severity]

---

## 📋 Summary

[Clean summary with entry points, BLoC, repository, endpoints, missing states, next steps]

---

## 🎯 Quick Actions

1. **Fix Critical Issues**: [List]
2. **Optimize Performance**: [List]
3. **Complete Missing States**: [List]
4. **Add Tests**: [List]
```

---

## Common Patterns to Look For

### Good Patterns ✅
- BLoC only imports UseCases, Events, States
- Domain layer is pure Dart
- Network_Client only in data layer
- ListView.builder with ValueKey
- All BlocStatus cases handled in UI
- Complete DI registration

### Bad Patterns ❌
- BLoC importing NetworkClient or Dio
- Domain importing Flutter packages
- setState in pages/widgets
- ListView without .builder
- Missing ValueKey in lists
- Direct DateTime.now() usage
- Network_Client outside data layer

---

## Notes

- Be thorough - explore all layers systematically
- Provide specific file paths and line numbers for violations
- Prioritize critical violations that break architecture
- Suggest concrete fixes, not just descriptions
- Include code snippets when helpful
- If feature is incomplete, list ALL missing pieces
