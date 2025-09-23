// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvisoryModel _$AdvisoryModelFromJson(Map<String, dynamic> json) =>
    AdvisoryModel(
      advisoryId: (json['advisory_id'] as num?)?.toInt(),
      advisoryCatId: json['advisory_cat_id'] as String?,
      advisorySoundId: json['advisory_sound_id'] as String?,
      advisoryTitle: json['advisory_title'] as String?,
      advisoryQuestion: json['advisory_question'] as String?,
      advisoryQuestionDate: json['advisory_question_date'] as String?,
      advisoryAnswer: json['advisory_answer'] as String?,
      advisoryAnswerDate: json['advisory_answer_date'] as String?,
      advisoryVisitor: (json['advisory_visitor'] as num?)?.toInt(),
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
          : AdvisoryCategoryModel.fromJson(
              json['category'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AdvisoryModelToJson(AdvisoryModel instance) =>
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

AdvisoryCategoryModel _$AdvisoryCategoryModelFromJson(
  Map<String, dynamic> json,
) => AdvisoryCategoryModel(
  catId: (json['cat_id'] as num?)?.toInt(),
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

Map<String, dynamic> _$AdvisoryCategoryModelToJson(
  AdvisoryCategoryModel instance,
) => <String, dynamic>{
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
