import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

/// Custom converter that handles both int and String values
class IntStringConverter implements JsonConverter<String, dynamic> {
  const IntStringConverter();

  @override
  String fromJson(dynamic value) {
    if (value is int) {
      return value.toString();
    } else if (value is String) {
      return value;
    }
    return '';
  }

  @override
  dynamic toJson(String value) => value;
}

/// Main response model for books API
@freezed
abstract class BooksResponse with _$BooksResponse {
  const factory BooksResponse({
    required String status,
    required List<BookData> data,
    BooksMeta? meta,
  }) = _BooksResponse;

  factory BooksResponse.fromJson(Map<String, dynamic> json) =>
      _$BooksResponseFromJson(json);
}

/// Individual book data model
@freezed
abstract class BookData with _$BookData {
  const factory BookData({
    @JsonKey(name: 'book_id') required int bookId,
    @JsonKey(name: 'book_title') required String bookTitle,
    @JsonKey(name: 'book_summary') String? bookSummary,
    @JsonKey(name: 'book_des') String? bookDes,
    @JsonKey(name: 'book_cat_id') @IntStringConverter() required String bookCatId,
    @JsonKey(name: 'book_pic') String? bookPic,
    @JsonKey(name: 'book_file') String? bookFile,
    @JsonKey(name: 'book_visitor') @IntStringConverter() required String bookVisitor,
    @JsonKey(name: 'book_priority') @IntStringConverter() required String bookPriority,
    @JsonKey(name: 'book_date') required String bookDate,
    @JsonKey(name: 'book_active') @IntStringConverter() required String bookActive,
    @JsonKey(name: 'book_source') String? bookSource,
    @JsonKey(name: 'book_file_url') String? bookFileUrl,
    @JsonKey(name: 'book_pic_url') String? bookPicUrl,
    @JsonKey(name: 'book_type') String? bookType,
    @JsonKey(name: 'book_download_url') String? bookDownloadUrl,
    BookCategory? category,
  }) = _BookData;

  factory BookData.fromJson(Map<String, dynamic> json) =>
      _$BookDataFromJson(json);
}

/// Book category model
@freezed
abstract class BookCategory with _$BookCategory {
  const factory BookCategory({
    @JsonKey(name: 'cat_id') required int catId,
    @JsonKey(name: 'cat_father_id') @IntStringConverter() required String catFatherId,
    @JsonKey(name: 'cat_menus') @IntStringConverter() required String catMenus,
    @JsonKey(name: 'cat_title') required String catTitle,
    @JsonKey(name: 'cat_note') String? catNote,
    @JsonKey(name: 'cat_pic') String? catPic,
    @JsonKey(name: 'cat_sup') @IntStringConverter() required String catSup,
    @JsonKey(name: 'cat_date') required String catDate,
    @JsonKey(name: 'cat_pic_active') @IntStringConverter() required String catPicActive,
    @JsonKey(name: 'cat_lan') required String catLan,
    @JsonKey(name: 'cat_pos') @IntStringConverter() required String catPos,
    @JsonKey(name: 'cat_active') @IntStringConverter() required String catActive,
    @JsonKey(name: 'cat_show_menu') @IntStringConverter() required String catShowMenu,
    @JsonKey(name: 'cat_show_main') @IntStringConverter() required String catShowMain,
    @JsonKey(name: 'cat_agent') String? catAgent,
  }) = _BookCategory;

  factory BookCategory.fromJson(Map<String, dynamic> json) =>
      _$BookCategoryFromJson(json);
}

/// Books pagination meta data
@freezed
abstract class BooksMeta with _$BooksMeta {
  const factory BooksMeta({
    BooksPagination? pagination,
    BooksFilters? filters,
    @JsonKey(name: 'response_info') BooksResponseInfo? responseInfo,
  }) = _BooksMeta;

  factory BooksMeta.fromJson(Map<String, dynamic> json) =>
      _$BooksMetaFromJson(json);
}

/// Books pagination data
@freezed
abstract class BooksPagination with _$BooksPagination {
  const factory BooksPagination({
    required int total,
    required int count,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'last_page') required int lastPage,
    required int? from,
    required int? to,
  }) = _BooksPagination;

  factory BooksPagination.fromJson(Map<String, dynamic> json) =>
      _$BooksPaginationFromJson(json);
}

/// Books filters data
@freezed
abstract class BooksFilters with _$BooksFilters {
  const factory BooksFilters({
    @JsonKey(name: 'applied_filters') Map<String, dynamic>? appliedFilters,
    @JsonKey(name: 'available_sorts') List<String>? availableSorts,
  }) = _BooksFilters;

  factory BooksFilters.fromJson(Map<String, dynamic> json) =>
      _$BooksFiltersFromJson(json);
}

/// Books response info
@freezed
abstract class BooksResponseInfo with _$BooksResponseInfo {
  const factory BooksResponseInfo({
    required String timestamp,
    @JsonKey(name: 'api_version') required String apiVersion,
    @JsonKey(name: 'endpoint') required String endpoint,
    @JsonKey(name: 'content_type') required String contentType,
  }) = _BooksResponseInfo;

  factory BooksResponseInfo.fromJson(Map<String, dynamic> json) =>
      _$BooksResponseInfoFromJson(json);
}

// ===== UTILITY EXTENSIONS =====

extension BookDataExtensions on BookData {
  /// Check if book is active
  bool get isActive => bookActive == '1';
  
  /// Get formatted date
  String get formattedDate {
    try {
      final date = DateTime.parse(bookDate);
      return '${date.day}/${date.month}/${date.year}';
    } catch (e) {
      return bookDate;
    }
  }
  
  /// Get visitor count as integer
  int get visitorCount {
    try {
      return int.parse(bookVisitor);
    } catch (e) {
      return 0;
    }
  }
  
  /// Get priority as integer
  int get priorityValue {
    try {
      return int.parse(bookPriority);
    } catch (e) {
      return 0;
    }
  }
  
  /// Check if book has a valid image
  bool get hasImage => bookPic != null && bookPic!.isNotEmpty;
  
  /// Check if book has a valid file
  bool get hasFile => bookFile != null && bookFile!.isNotEmpty;
  
  /// Get full image URL
  String? get fullImageUrl => bookPicUrl;
  
  /// Get full file URL
  String? get fullFileUrl => bookFileUrl ?? bookDownloadUrl;
}

extension BookCategoryExtensions on BookCategory {
  /// Check if category is active
  bool get isActive => catActive == '1';
  
  /// Check if category should show in menu
  bool get shouldShowInMenu => catShowMenu == '1';
  
  /// Check if category should show in main
  bool get shouldShowInMain => catShowMain == '1';
}
