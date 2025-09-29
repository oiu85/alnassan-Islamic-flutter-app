// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisory_categories_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AdvisoryCategoriesModel _$AdvisoryCategoriesModelFromJson(
  Map<String, dynamic> json,
) => _AdvisoryCategoriesModel(
  status: json['status'] as String?,
  data: json['data'] == null
      ? null
      : AdvisoryCategoriesData.fromJson(json['data'] as Map<String, dynamic>),
  pagination: json['pagination'] == null
      ? null
      : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
  meta: json['meta'] == null
      ? null
      : Meta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdvisoryCategoriesModelToJson(
  _AdvisoryCategoriesModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'data': instance.data,
  'pagination': instance.pagination,
  'meta': instance.meta,
};

_AdvisoryCategoriesData _$AdvisoryCategoriesDataFromJson(
  Map<String, dynamic> json,
) => _AdvisoryCategoriesData(
  parentCategories: (json['parent_categories'] as List<dynamic>?)
      ?.map((e) => ParentCategory.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AdvisoryCategoriesDataToJson(
  _AdvisoryCategoriesData instance,
) => <String, dynamic>{'parent_categories': instance.parentCategories};

_ParentCategory _$ParentCategoryFromJson(Map<String, dynamic> json) =>
    _ParentCategory(
      catId: _stringToInt(json['cat_id']),
      catFatherId: json['cat_father_id'] as String?,
      catTitle: json['cat_title'] as String?,
      catNote: json['cat_note'] as String?,
      catPic: json['cat_pic'] as String?,
      catPos: json['cat_pos'] as String?,
      catActive: json['cat_active'] as String?,
    );

Map<String, dynamic> _$ParentCategoryToJson(_ParentCategory instance) =>
    <String, dynamic>{
      'cat_id': instance.catId,
      'cat_father_id': instance.catFatherId,
      'cat_title': instance.catTitle,
      'cat_note': instance.catNote,
      'cat_pic': instance.catPic,
      'cat_pos': instance.catPos,
      'cat_active': instance.catActive,
    };

_Pagination _$PaginationFromJson(Map<String, dynamic> json) => _Pagination(
  total: (json['total'] as num?)?.toInt(),
  count: (json['count'] as num?)?.toInt(),
  perPage: (json['per_page'] as num?)?.toInt(),
  currentPage: (json['current_page'] as num?)?.toInt(),
  lastPage: (json['last_page'] as num?)?.toInt(),
  from: (json['from'] as num?)?.toInt(),
  to: (json['to'] as num?)?.toInt(),
);

Map<String, dynamic> _$PaginationToJson(_Pagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'count': instance.count,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'from': instance.from,
      'to': instance.to,
    };

_Meta _$MetaFromJson(Map<String, dynamic> json) => _Meta(
  structure: json['structure'] as String?,
  childrenIncluded: json['children_included'] as bool?,
  fatwasIncluded: json['fatwas_included'] as bool?,
  totalParentCategories: (json['total_parent_categories'] as num?)?.toInt(),
);

Map<String, dynamic> _$MetaToJson(_Meta instance) => <String, dynamic>{
  'structure': instance.structure,
  'children_included': instance.childrenIncluded,
  'fatwas_included': instance.fatwasIncluded,
  'total_parent_categories': instance.totalParentCategories,
};

_AdvisoryModel _$AdvisoryModelFromJson(Map<String, dynamic> json) =>
    _AdvisoryModel(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AdvisoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdvisoryModelToJson(_AdvisoryModel instance) =>
    <String, dynamic>{'status': instance.status, 'data': instance.data};

_AdvisoryItem _$AdvisoryItemFromJson(Map<String, dynamic> json) =>
    _AdvisoryItem(
      advisoryId: _stringToInt(json['advisory_id']),
      advisoryCatId: json['advisory_cat_id'] as String?,
      advisorySoundId: json['advisory_sound_id'] as String?,
      advisoryTitle: json['advisory_title'] as String?,
      advisoryQuestion: json['advisory_question'] as String?,
      advisoryQuestionDate: json['advisory_question_date'] as String?,
      advisoryAnswer: json['advisory_answer'] as String?,
      advisoryAnswerDate: json['advisory_answer_date'] as String?,
      advisoryVisitor: _stringToInt(json['advisory_visitor']),
      advisoryLastAdvisory: json['advisory_last_advisory'] as String?,
      advisoryPriority: json['advisory_priority'] as String?,
      advisoryActiveVote: json['advisory_active_vote'] as String?,
      advisoryActiveHint: json['advisory_active_hint'] as String?,
      advisoryPic: json['advisory_pic'] as String?,
      advisoryPicActive: json['advisory_pic_active'] as bool?,
      advisoryPicPos: json['advisory_pic_pos'] as String?,
      advisorySenderName: json['advisory_sender_name'] as String?,
      advisorySenderEmail: json['advisory_sender_email'] as String?,
      advisoryPublisherId: json['advisory_publisher_id'] as String?,
      advisorySource: json['advisory_source'] as String?,
      advisorySourceUrl: json['advisory_source_url'] as String?,
      advisoryYoutubeId: json['advisory_youtube_id'] as String?,
      advisoryFile: json['advisory_file'] as String?,
      advisoryUserAddHintNsup: json['advisory_user_add_hint_nsup'] as String?,
      advisoryIsNew: json['advisory_is_new'] as bool?,
      advisoryActive: json['advisory_active'] as bool?,
      category: json['category'] == null
          ? null
          : AdvisoryCategory.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AdvisoryItemToJson(_AdvisoryItem instance) =>
    <String, dynamic>{
      'advisory_id': instance.advisoryId,
      'advisory_cat_id': instance.advisoryCatId,
      'advisory_sound_id': instance.advisorySoundId,
      'advisory_title': instance.advisoryTitle,
      'advisory_question': instance.advisoryQuestion,
      'advisory_question_date': instance.advisoryQuestionDate,
      'advisory_answer': instance.advisoryAnswer,
      'advisory_answer_date': instance.advisoryAnswerDate,
      'advisory_visitor': instance.advisoryVisitor,
      'advisory_last_advisory': instance.advisoryLastAdvisory,
      'advisory_priority': instance.advisoryPriority,
      'advisory_active_vote': instance.advisoryActiveVote,
      'advisory_active_hint': instance.advisoryActiveHint,
      'advisory_pic': instance.advisoryPic,
      'advisory_pic_active': instance.advisoryPicActive,
      'advisory_pic_pos': instance.advisoryPicPos,
      'advisory_sender_name': instance.advisorySenderName,
      'advisory_sender_email': instance.advisorySenderEmail,
      'advisory_publisher_id': instance.advisoryPublisherId,
      'advisory_source': instance.advisorySource,
      'advisory_source_url': instance.advisorySourceUrl,
      'advisory_youtube_id': instance.advisoryYoutubeId,
      'advisory_file': instance.advisoryFile,
      'advisory_user_add_hint_nsup': instance.advisoryUserAddHintNsup,
      'advisory_is_new': instance.advisoryIsNew,
      'advisory_active': instance.advisoryActive,
      'category': instance.category,
    };

_AdvisoryCategory _$AdvisoryCategoryFromJson(Map<String, dynamic> json) =>
    _AdvisoryCategory(
      catId: _stringToInt(json['cat_id']),
      catFatherId: json['cat_father_id'] as String?,
      catMenus: json['cat_menus'] as String?,
      catTitle: json['cat_title'] as String?,
      catNote: json['cat_note'] as String?,
      catPic: json['cat_pic'] as String?,
      catSup: json['cat_sup'] as String?,
      catDate: json['cat_date'] as String?,
      catPicActive: json['cat_pic_active'] as String?,
      catLan: json['cat_lan'] as String?,
      catPos: json['cat_pos'] as String?,
      catActive: json['cat_active'] as String?,
      catShowMenu: json['cat_show_menu'] as String?,
      catShowMain: json['cat_show_main'] as String?,
      catAgent: json['cat_agent'] as String?,
    );

Map<String, dynamic> _$AdvisoryCategoryToJson(_AdvisoryCategory instance) =>
    <String, dynamic>{
      'cat_id': instance.catId,
      'cat_father_id': instance.catFatherId,
      'cat_menus': instance.catMenus,
      'cat_title': instance.catTitle,
      'cat_note': instance.catNote,
      'cat_pic': instance.catPic,
      'cat_sup': instance.catSup,
      'cat_date': instance.catDate,
      'cat_pic_active': instance.catPicActive,
      'cat_lan': instance.catLan,
      'cat_pos': instance.catPos,
      'cat_active': instance.catActive,
      'cat_show_menu': instance.catShowMenu,
      'cat_show_main': instance.catShowMain,
      'cat_agent': instance.catAgent,
    };

_AdvisorySubmissionRequest _$AdvisorySubmissionRequestFromJson(
  Map<String, dynamic> json,
) => _AdvisorySubmissionRequest(
  advisoryQuestion: json['advisory_question'] as String,
  advisorySenderName: json['advisory_sender_name'] as String,
  advisorySenderEmail: json['advisory_sender_email'] as String,
);

Map<String, dynamic> _$AdvisorySubmissionRequestToJson(
  _AdvisorySubmissionRequest instance,
) => <String, dynamic>{
  'advisory_question': instance.advisoryQuestion,
  'advisory_sender_name': instance.advisorySenderName,
  'advisory_sender_email': instance.advisorySenderEmail,
};

_AdvisorySubmissionResponse _$AdvisorySubmissionResponseFromJson(
  Map<String, dynamic> json,
) => _AdvisorySubmissionResponse(
  status: json['status'] as String?,
  message: json['message'] as String?,
  data: json['data'] == null
      ? null
      : AdvisorySubmissionData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$AdvisorySubmissionResponseToJson(
  _AdvisorySubmissionResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'message': instance.message,
  'data': instance.data,
};

_AdvisorySubmissionData _$AdvisorySubmissionDataFromJson(
  Map<String, dynamic> json,
) => _AdvisorySubmissionData(
  id: (json['id'] as num?)?.toInt(),
  question: json['question'] as String?,
  senderName: json['sender_name'] as String?,
  senderEmail: json['sender_email'] as String?,
  submissionDate: json['submission_date'] as String?,
  status: json['status'] as String?,
);

Map<String, dynamic> _$AdvisorySubmissionDataToJson(
  _AdvisorySubmissionData instance,
) => <String, dynamic>{
  'id': instance.id,
  'question': instance.question,
  'sender_name': instance.senderName,
  'sender_email': instance.senderEmail,
  'submission_date': instance.submissionDate,
  'status': instance.status,
};
