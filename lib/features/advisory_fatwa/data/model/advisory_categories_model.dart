import 'package:freezed_annotation/freezed_annotation.dart';

part 'advisory_categories_model.freezed.dart';
part 'advisory_categories_model.g.dart';

@freezed
abstract class AdvisoryCategoriesModel with _$AdvisoryCategoriesModel {
  const factory AdvisoryCategoriesModel({
    String? status,
    AdvisoryCategoriesData? data,
    Pagination? pagination,
    Meta? meta,
  }) = _AdvisoryCategoriesModel;

  factory AdvisoryCategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$AdvisoryCategoriesModelFromJson(json);
}

@freezed
abstract class AdvisoryCategoriesData with _$AdvisoryCategoriesData {
  const factory AdvisoryCategoriesData({
    @JsonKey(name: 'parent_categories')
    List<ParentCategory>? parentCategories,
  }) = _AdvisoryCategoriesData;

  factory AdvisoryCategoriesData.fromJson(Map<String, dynamic> json) =>
      _$AdvisoryCategoriesDataFromJson(json);
}

@freezed
abstract class ParentCategory with _$ParentCategory {
  const factory ParentCategory({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt)
    int? catId,
    @JsonKey(name: 'cat_father_id')
    String? catFatherId,
    @JsonKey(name: 'cat_title')
    String? catTitle,
    @JsonKey(name: 'cat_note')
    String? catNote,
    @JsonKey(name: 'cat_pic')
    String? catPic,
    @JsonKey(name: 'cat_pos')
    String? catPos,
    @JsonKey(name: 'cat_active')
    String? catActive,
  }) = _ParentCategory;

  factory ParentCategory.fromJson(Map<String, dynamic> json) =>
      _$ParentCategoryFromJson(json);
}

@freezed
abstract class Pagination with _$Pagination {
  const factory Pagination({
    int? total,
    int? count,
    @JsonKey(name: 'per_page')
    int? perPage,
    @JsonKey(name: 'current_page')
    int? currentPage,
    @JsonKey(name: 'last_page')
    int? lastPage,
    int? from,
    int? to,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}

@freezed
abstract class Meta with _$Meta {
  const factory Meta({
    String? structure,
    @JsonKey(name: 'children_included')
    bool? childrenIncluded,
    @JsonKey(name: 'fatwas_included')
    bool? fatwasIncluded,
    @JsonKey(name: 'total_parent_categories')
    int? totalParentCategories,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

// ===== ADVISORY MODELS =====

@freezed
abstract class AdvisoryModel with _$AdvisoryModel {
  const factory AdvisoryModel({
    String? status,
    List<AdvisoryItem>? data,
  }) = _AdvisoryModel;

  factory AdvisoryModel.fromJson(Map<String, dynamic> json) =>
      _$AdvisoryModelFromJson(json);
}

@freezed
abstract class AdvisoryItem with _$AdvisoryItem {
  const factory AdvisoryItem({
    @JsonKey(name: 'advisory_id', fromJson: _stringToInt)
    int? advisoryId,
    @JsonKey(name: 'advisory_cat_id')
    String? advisoryCatId,
    @JsonKey(name: 'advisory_sound_id')
    String? advisorySoundId,
    @JsonKey(name: 'advisory_title')
    String? advisoryTitle,
    @JsonKey(name: 'advisory_question')
    String? advisoryQuestion,
    @JsonKey(name: 'advisory_question_date')
    String? advisoryQuestionDate,
    @JsonKey(name: 'advisory_answer')
    String? advisoryAnswer,
    @JsonKey(name: 'advisory_answer_date')
    String? advisoryAnswerDate,
    @JsonKey(name: 'advisory_visitor', fromJson: _stringToInt)
    int? advisoryVisitor,
    @JsonKey(name: 'advisory_last_advisory')
    String? advisoryLastAdvisory,
    @JsonKey(name: 'advisory_priority')
    String? advisoryPriority,
    @JsonKey(name: 'advisory_active_vote')
    String? advisoryActiveVote,
    @JsonKey(name: 'advisory_active_hint')
    String? advisoryActiveHint,
    @JsonKey(name: 'advisory_pic')
    String? advisoryPic,
    @JsonKey(name: 'advisory_pic_active')
    bool? advisoryPicActive,
    @JsonKey(name: 'advisory_pic_pos')
    String? advisoryPicPos,
    @JsonKey(name: 'advisory_sender_name')
    String? advisorySenderName,
    @JsonKey(name: 'advisory_sender_email')
    String? advisorySenderEmail,
    @JsonKey(name: 'advisory_publisher_id')
    String? advisoryPublisherId,
    @JsonKey(name: 'advisory_source')
    String? advisorySource,
    @JsonKey(name: 'advisory_source_url')
    String? advisorySourceUrl,
    @JsonKey(name: 'advisory_youtube_id')
    String? advisoryYoutubeId,
    @JsonKey(name: 'advisory_file')
    String? advisoryFile,
    @JsonKey(name: 'advisory_user_add_hint_nsup')
    String? advisoryUserAddHintNsup,
    @JsonKey(name: 'advisory_is_new')
    bool? advisoryIsNew,
    @JsonKey(name: 'advisory_active')
    bool? advisoryActive,
    AdvisoryCategory? category,
  }) = _AdvisoryItem;

  factory AdvisoryItem.fromJson(Map<String, dynamic> json) =>
      _$AdvisoryItemFromJson(json);
}

@freezed
abstract class AdvisoryCategory with _$AdvisoryCategory {
  const factory AdvisoryCategory({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt)
    int? catId,
    @JsonKey(name: 'cat_father_id')
    String? catFatherId,
    @JsonKey(name: 'cat_menus')
    String? catMenus,
    @JsonKey(name: 'cat_title')
    String? catTitle,
    @JsonKey(name: 'cat_note')
    String? catNote,
    @JsonKey(name: 'cat_pic')
    String? catPic,
    @JsonKey(name: 'cat_sup')
    String? catSup,
    @JsonKey(name: 'cat_date')
    String? catDate,
    @JsonKey(name: 'cat_pic_active')
    String? catPicActive,
    @JsonKey(name: 'cat_lan')
    String? catLan,
    @JsonKey(name: 'cat_pos')
    String? catPos,
    @JsonKey(name: 'cat_active')
    String? catActive,
    @JsonKey(name: 'cat_show_menu')
    String? catShowMenu,
    @JsonKey(name: 'cat_show_main')
    String? catShowMain,
    @JsonKey(name: 'cat_agent')
    String? catAgent,
  }) = _AdvisoryCategory;

  factory AdvisoryCategory.fromJson(Map<String, dynamic> json) =>
      _$AdvisoryCategoryFromJson(json);
}

// ===== ADVISORY SUBMISSION MODELS =====

@freezed
abstract class AdvisorySubmissionRequest with _$AdvisorySubmissionRequest {
  const factory AdvisorySubmissionRequest({
    @JsonKey(name: 'advisory_question')
    required String advisoryQuestion,
    @JsonKey(name: 'advisory_sender_name')
    required String advisorySenderName,
    @JsonKey(name: 'advisory_sender_email')
    required String advisorySenderEmail,
  }) = _AdvisorySubmissionRequest;

  factory AdvisorySubmissionRequest.fromJson(Map<String, dynamic> json) =>
      _$AdvisorySubmissionRequestFromJson(json);
}

@freezed
abstract class AdvisorySubmissionResponse with _$AdvisorySubmissionResponse {
  const factory AdvisorySubmissionResponse({
    String? status,
    String? message,
    AdvisorySubmissionData? data,
  }) = _AdvisorySubmissionResponse;

  factory AdvisorySubmissionResponse.fromJson(Map<String, dynamic> json) =>
      _$AdvisorySubmissionResponseFromJson(json);
}

@freezed
abstract class AdvisorySubmissionData with _$AdvisorySubmissionData {
  const factory AdvisorySubmissionData({
    int? id,
    String? question,
    @JsonKey(name: 'sender_name')
    String? senderName,
    @JsonKey(name: 'sender_email')
    String? senderEmail,
    @JsonKey(name: 'submission_date')
    String? submissionDate,
    String? status,
  }) = _AdvisorySubmissionData;

  factory AdvisorySubmissionData.fromJson(Map<String, dynamic> json) =>
      _$AdvisorySubmissionDataFromJson(json);
}

// Helper function to convert string to int
int? _stringToInt(dynamic value) {
  if (value == null) return null;
  if (value is int) return value;
  if (value is String) return int.tryParse(value);
  return null;
}
