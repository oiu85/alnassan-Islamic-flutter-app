---
trigger: always_on
alwaysApply: true
---
# Dalelook Android Project Rules & Standards

## Table of Contents
1. [Project Architecture](#project-architecture)
2. [Project Structure](#project-structure)
3. [Coding Standards](#coding-standards)
4. [Mapper Pattern](#mapper-pattern)
5. [Dependencies & Libraries](#dependencies--libraries)
6. [Compose Implementation](#compose-implementation)
7. [Testing Strategy](#testing-strategy)
8. [Security & Performance](#security--performance)
9. [Version Control](#version-control)
10. [Documentation](#documentation)

---

## Project Architecture

### Core Principles
- **Clean Architecture** with MVVM presentation layer
- **Repository Pattern** for data management
- **Use Case Pattern** for business logic
- **Dependency Injection** with Hilt
- **Jetpack Compose** for modern UI development

### Architecture Layers
```
Presentation Layer (UI) → Domain Layer (Business Logic) → Data Layer (Data Sources)
```

---

## Project Structure

### Root Structure
```
app/
├── src/main/
│   ├── java/com/example/dalelook/
│   │   ├── core/                    # Shared functionality
│   │   ├── features/                # Feature modules
│   │   ├── di/                      # Dependency injection
│   │   └── MainActivity.kt          # Main entry point
│   └── res/                         # Resources
└── build.gradle.kts                 # Module configuration
```

### Feature Module Structure
```
features/[feature_name]/
├── data/                            # Data layer
│   ├── data_source/                 # API, Local DB, Remote sources
│   ├── mapper/                      # Data transformation
│   ├── repository/                  # Repository implementation
│   ├── request/                     # API request DTOs
│   └── response/                    # API response DTOs
├── domain/                          # Domain layer
│   ├── model/                       # Business entities
│   ├── repository/                  # Repository interface
│   └── use_case/                    # Business logic
└── presentation/                    # Presentation layer
    ├── screens/                     # UI screens
    ├── viewmodel/                   # ViewModel classes
    └── components/                  # Reusable UI components
```

### Core Module Structure
```
core/
├── app/                             # Application-level components
├── component/                       # Reusable UI components
├── functions/                       # Utility functions
├── generic/                         # Generic implementations
├── network/                         # Network utilities
├── rout/                           # Navigation
├── theme/                          # UI theming
└── utils/                          # Utility classes
```

---

## Coding Standards

### Naming Conventions
- **Classes**: PascalCase (`UserRepository`, `LoginViewModel`)
- **Functions**: camelCase (`getUserData`, `mapFromModel`)
- **Variables**: camelCase (`userName`, `isLoading`)
- **Constants**: UPPER_SNAKE_CASE (`BASE_URL`, `API_KEY`)
- **Files**: PascalCase (`UserRepository.kt`, `LoginScreen.kt`)
- **Packages**: lowercase with dots (`com.example.dalelook.features.auth`)

### Package Naming
```
com.example.dalelook
├── core.[functionality]             # core.network, core.utils
├── features.[feature_name].[layer]  # features.auth.presentation
└── di                              # Dependency injection
```

---

## Mapper Pattern

### File Structure
```
data/mapper/[Feature]Mapper.kt
data/request/[Feature]RequestDto.kt  
data/response/[Feature]ResponseDto.kt
domain/model/[Feature].kt
```

### Naming Convention
- **Mapper**: `[Feature]Mapper.kt`
- **DTOs**: `[Feature]RequestDto`, `[Feature]ResponseDto`
- **Domain**: `[Feature]`

### Function Signatures
```kotlin
// Data → Domain
fun DtoType.mapFromModel(): DomainType

// Domain → Data  
fun DomainType.mapFromDomain(): DtoType

// Lists
fun List<DtoType>.mapFromListModel(): List<DomainType>
fun List<DomainType>.mapFromListDomain(): List<DtoType>
```

### Import Structure
```kotlin
import com.example.dalelook.features.[feature].data.request.*
import com.example.dalelook.features.[feature].data.response.*
import com.example.dalelook.features.[feature].domain.model.*
```

### Usage Example
```kotlin
// In repository
val domain = response.mapFromModel()
val request = domain.mapFromDomain()
```

---

## Dependencies & Libraries

### Core Dependencies
```kotlin
dependencies {
    // Core Android
    implementation 'androidx.core:core-ktx:1.12.0'
    implementation 'androidx.lifecycle:lifecycle-runtime-ktx:2.7.0'
    implementation 'androidx.activity:activity-compose:1.8.2'
    
    // Compose
    implementation platform('androidx.compose:compose-bom:2024.02.00')
    implementation 'androidx.compose.ui:ui'
    implementation 'androidx.compose.ui:ui-graphics'
    implementation 'androidx.compose.ui:ui-tooling-preview'
    implementation 'androidx.compose.material3:material3'
    
    // Navigation
    implementation 'androidx.navigation:navigation-compose:2.7.7'
    
    // Dependency Injection
    implementation 'com.google.dagger:hilt-android:2.50'
    kapt 'com.google.dagger:hilt-compiler:2.50'
    implementation 'androidx.hilt:hilt-navigation-compose:1.1.0'
    
    // Networking
    implementation 'com.squareup.retrofit2:retrofit:2.9.0'
    implementation 'com.squareup.retrofit2:converter-gson:2.9.0'
    implementation 'com.squareup.okhttp3:logging-interceptor:4.12.0'
    
    // Coroutines
    implementation 'org.jetbrains.kotlinx:kotlinx-coroutines-android:1.7.3'
    
    // Image Loading
    implementation 'io.coil-kt:coil-compose:2.5.0'
}
```

### Testing Dependencies
```kotlin
dependencies {
    // Unit Testing
    testImplementation 'junit:junit:4.13.2'
    testImplementation 'org.mockito:mockito-core:5.3.1'
    testImplementation 'org.jetbrains.kotlinx:kotlinx-coroutines-test:1.7.3'
    
    // UI Testing
    androidTestImplementation 'androidx.test.ext:junit:1.1.5'
    androidTestImplementation 'androidx.test.espresso:espresso-core:3.5.1'
    androidTestImplementation 'androidx.compose.ui:ui-test-junit4'
}
```

---

## Compose Implementation

### Screen Structure
```kotlin
@Composable
fun FeatureScreen(
    viewModel: FeatureViewModel = hiltViewModel()
) {
    val state by viewModel.state.collectAsState()
    
    Column {
        // UI components
    }
}
```

### ViewModel Structure
```kotlin
@HiltViewModel
class FeatureViewModel @Inject constructor(
    private val useCase: FeatureUseCase
) : ViewModel() {
    
    private val _state = MutableStateFlow(FeatureState())
    val state = _state.asStateFlow()
    
    fun handleEvent(event: FeatureEvent) {
        // Handle events
    }
}
```

### State Management
```kotlin
data class FeatureState(
    val isLoading: Boolean = false,
    val data: List<Data> = emptyList(),
    val error: String? = null
)

sealed class FeatureEvent {
    object LoadData : FeatureEvent()
    data class ItemClicked(val item: Data) : FeatureEvent()
}
```

---

## Repository Pattern

### Interface Definition
```kotlin
interface FeatureRepository {
    suspend fun getData(): Result<Data>
    suspend fun saveData(data: Data): Result<Unit>
}
```

### Implementation
```kotlin
class FeatureRepositoryImpl @Inject constructor(
    private val api: ApiService,
    private val mapper: FeatureMapper
) : FeatureRepository {
    override suspend fun getData(): Result<Data> {
        return try {
            val response = api.getData()
            Result.success(response.mapFromModel())
        } catch (e: Exception) {
            Result.failure(e)
        }
    }
}
```

---

## Use Case Pattern

### Basic Structure
```kotlin
class FeatureUseCase @Inject constructor(
    private val repository: FeatureRepository
) {
    suspend operator fun invoke(): Result<Data> {
        return repository.getData()
    }
}
```

### Complex Use Cases
```kotlin
class ComplexFeatureUseCase @Inject constructor(
    private val repository: FeatureRepository,
    private val validator: DataValidator
) {
    suspend operator fun invoke(input: Input): Result<Output> {
        // Validation
        val validationResult = validator.validate(input)
        if (!validationResult.isValid) {
            return Result.failure(ValidationException(validationResult.errors))
        }
        
        // Business logic
        return repository.processData(input)
    }
}
```

---

## Network Layer

### API Service Interface
```kotlin
interface ApiService {
    @GET("endpoint")
    suspend fun getData(): Response<DataResponseDto>
    
    @POST("endpoint")
    suspend fun postData(@Body request: DataRequestDto): Response<DataResponseDto>
}
```

### Retrofit Client
```kotlin
class RetrofitClient @Inject constructor() {
    fun createApiService(): ApiService {
        return Retrofit.Builder()
            .baseUrl(BASE_URL)
            .addConverterFactory(GsonConverterFactory.create())
            .build()
            .create(ApiService::class.java)
    }
}
```

### Error Handling
```kotlin
sealed class NetworkResult<out T> {
    data class Success<T>(val data: T) : NetworkResult<T>()
    data class Error(val message: String, val code: Int? = null) : NetworkResult<Nothing>()
    object Loading : NetworkResult<Nothing>()
}
```

---

## Testing Strategy

### Test Structure
```
test/
├── java/com/example/dalelook/
│   ├── features/[feature_name]/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   └── core/
```

### Unit Testing
```kotlin
class FeatureUseCaseTest {
    @get:Rule
    val instantExecutorRule = InstantTaskExecutorRule()
    
    @MockK
    private lateinit var repository: FeatureRepository
    
    private lateinit var useCase: FeatureUseCase
    
    @Before
    fun setup() {
        MockKAnnotations.init(this)
        useCase = FeatureUseCase(repository)
    }
    
    @Test
    fun `when repository returns success, use case should return success`() = runTest {
        // Given
        val expectedData = Data("test")
        coEvery { repository.getData() } returns Result.success(expectedData)
        
        // When
        val result = useCase()
        
        // Then
        assertTrue(result.isSuccess)
        assertEquals(expectedData, result.getOrNull())
    }
}
```

### UI Testing
```kotlin
@RunWith(AndroidJUnit4::class)
class FeatureScreenTest {
    @get:Rule
    val composeTestRule = createComposeRule()
    
    @Test
    fun testScreenDisplaysCorrectly() {
        composeTestRule.setContent {
            FeatureScreen()
        }
        
        composeTestRule.onNodeWithText("Expected Text").assertIsDisplayed()
    }
}
```

---

## Security & Performance

### Security Best Practices
- Store sensitive data in encrypted SharedPreferences
- Use ProGuard for code obfuscation
- Implement certificate pinning for network calls
- Never log sensitive information
- Validate all user inputs
- Use parameterized queries for database operations

### Performance Optimization
- Use lazy loading for lists
- Implement pagination for large datasets
- Use Coil for efficient image loading
- Implement proper memory management
- Use Compose recomposition optimization
- Implement proper caching strategies

### Memory Management
```kotlin
@Composable
fun OptimizedList(
    items: List<Data>,
    modifier: Modifier = Modifier
) {
    LazyColumn(modifier = modifier) {
        items(
            items = items,
            key = { it.id } // Stable keys for efficient recomposition
        ) { item ->
            DataItem(item = item)
        }
    }
}
```

---

## Version Control

### Branch Strategy
```
main/          # Production code
develop/       # Development branch
feature/       # Feature branches (feature/auth-implementation)
hotfix/        # Bug fixes (hotfix/crash-fix)
release/       # Release preparation (release/v1.0.0)
```

### Commit Message Format
```
type(scope): description

feat(auth): implement login functionality
fix(ui): resolve button click issue
docs(readme): update setup instructions
refactor(network): simplify API client
test(auth): add unit tests for login
```

---

## Documentation

### Required Documentation
- **README.md** with setup instructions
- **API documentation** for all endpoints
- **Architecture decision records (ADRs)** for significant design choices
- **Code comments** for complex logic
- **Component documentation** for reusable UI components

### Code Comments
```kotlin
/**
 * Maps API response DTO to domain model.
 * 
 * @param dto The API response data transfer object
 * @return Domain model representing the business entity
 * @throws IllegalArgumentException if required fields are missing
 */
fun UserResponseDto.mapFromModel(): User {
    require(name.isNotBlank()) { "User name cannot be empty" }
    require(email.isNotBlank()) { "User email cannot be empty" }
    
    return User(
        id = id,
        name = name,
        email = email,
        isActive = isActive ?: false
    )
}
```

### README Structure
```markdown
# Dalelook Android App

## Overview
Brief description of the app and its purpose.

## Setup
1. Clone the repository
2. Install Android Studio
3. Sync project with Gradle files
4. Run the app

## Architecture
Description of the architecture and design patterns used.

## Features
List of main features and their implementation status.

## Contributing
Guidelines for contributing to the project.
```

---

## Code Quality

### Static Analysis
- Use **ktlint** for code formatting
- Implement **SonarQube** for code quality analysis
- Use **Detekt** for Kotlin-specific static analysis

### Code Review Checklist
- [ ] Follows naming conventions
- [ ] Implements proper error handling
- [ ] Includes unit tests
- [ ] Uses appropriate design patterns
- [ ] Follows SOLID principles
- [ ] Implements proper logging
- [ ] Handles edge cases

### Performance Checklist
- [ ] Efficient data structures used
- [ ] Proper pagination implemented
- [ ] Image loading optimized
- [ ] Memory leaks prevented
- [ ] Network calls optimized
- [ ] UI recomposition minimized

---

## Troubleshooting

### Common Issues
1. **Build failures**: Check Gradle sync and dependency versions
2. **Runtime crashes**: Verify null safety and exception handling
3. **UI issues**: Check Compose recomposition and state management
4. **Network errors**: Verify API endpoints and error handling

### Debug Tools
- **Layout Inspector** for UI debugging
- **Network Inspector** for API debugging
- **Memory Profiler** for performance analysis
- **Logcat** for runtime debugging

---