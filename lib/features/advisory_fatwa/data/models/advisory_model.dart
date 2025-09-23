import 'package:json_annotation/json_annotation.dart';

part 'advisory_model.g.dart';

@JsonSerializable()
class AdvisoryModel {
  @JsonKey(name: 'advisory_id')
  final int? advisoryId;

  @JsonKey(name: 'advisory_cat_id')
  final String? advisoryCatId;

  @JsonKey(name: 'advisory_sound_id')
  final String? advisorySoundId;

  @JsonKey(name: 'advisory_title')
  final String? advisoryTitle;

  @JsonKey(name: 'advisory_question')
  final String? advisoryQuestion;

  @JsonKey(name: 'advisory_question_date')
  final String? advisoryQuestionDate;

  @JsonKey(name: 'advisory_answer')
  final String? advisoryAnswer;

  @JsonKey(name: 'advisory_answer_date')
  final String? advisoryAnswerDate;

  @JsonKey(name: 'advisory_visitor')
  final int? advisoryVisitor;

  @JsonKey(name: 'advisory_last_advisory')
  final String? advisoryLastAdvisory;

  @JsonKey(name: 'advisory_priority')
  final String? advisoryPriority;

  @JsonKey(name: 'advisory_active_vote')
  final String? advisoryActiveVote;

  @JsonKey(name: 'advisory_active_hint')
  final String? advisoryActiveHint;

  @JsonKey(name: 'advisory_pic')
  final String? advisoryPic;

  @JsonKey(name: 'advisory_pic_active')
  final bool? advisoryPicActive;

  @JsonKey(name: 'advisory_pic_pos')
  final String? advisoryPicPos;

  @JsonKey(name: 'advisory_sender_name')
  final String? advisorySenderName;

  @JsonKey(name: 'advisory_sender_email')
  final String? advisorySenderEmail;

  @JsonKey(name: 'advisory_publisher_id')
  final String? advisoryPublisherId;

  @JsonKey(name: 'advisory_source')
  final String? advisorySource;

  @JsonKey(name: 'advisory_source_url')
  final String? advisorySourceUrl;

  @JsonKey(name: 'advisory_youtube_id')
  final String? advisoryYoutubeId;

  @JsonKey(name: 'advisory_file')
  final String? advisoryFile;

  @JsonKey(name: 'advisory_user_add_hint_nsup')
  final String? advisoryUserAddHintNsup;

  @JsonKey(name: 'advisory_is_new')
  final bool? advisoryIsNew;

  @JsonKey(name: 'advisory_active')
  final bool? advisoryActive;

  final AdvisoryCategoryModel? category;

  const AdvisoryModel({
    this.advisoryId,
    this.advisoryCatId,
    this.advisorySoundId,
    this.advisoryTitle,
    this.advisoryQuestion,
    this.advisoryQuestionDate,
    this.advisoryAnswer,
    this.advisoryAnswerDate,
    this.advisoryVisitor,
    this.advisoryLastAdvisory,
    this.advisoryPriority,
    this.advisoryActiveVote,
    this.advisoryActiveHint,
    this.advisoryPic,
    this.advisoryPicActive,
    this.advisoryPicPos,
    this.advisorySenderName,
    this.advisorySenderEmail,
    this.advisoryPublisherId,
    this.advisorySource,
    this.advisorySourceUrl,
    this.advisoryYoutubeId,
    this.advisoryFile,
    this.advisoryUserAddHintNsup,
    this.advisoryIsNew,
    this.advisoryActive,
    this.category,
  });

  factory AdvisoryModel.fromJson(Map<String, dynamic> json) =>
      _$AdvisoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$AdvisoryModelToJson(this);
}

@JsonSerializable()
class AdvisoryCategoryModel {
  @JsonKey(name: 'cat_id')
  final int? catId;

  @JsonKey(name: 'cat_father_id')
  final String? catFatherId;

  @JsonKey(name: 'cat_menus')
  final String? catMenus;

  @JsonKey(name: 'cat_title')
  final String? catTitle;

  @JsonKey(name: 'cat_note')
  final String? catNote;

  @JsonKey(name: 'cat_pic')
  final String? catPic;

  @JsonKey(name: 'cat_sup')
  final String? catSup;

  @JsonKey(name: 'cat_date')
  final String? catDate;

  @JsonKey(name: 'cat_pic_active')
  final String? catPicActive;

  @JsonKey(name: 'cat_lan')
  final String? catLan;

  @JsonKey(name: 'cat_pos')
  final String? catPos;

  @JsonKey(name: 'cat_active')
  final String? catActive;

  @JsonKey(name: 'cat_show_menu')
  final String? catShowMenu;

  @JsonKey(name: 'cat_show_main')
  final String? catShowMain;

  @JsonKey(name: 'cat_agent')
  final String? catAgent;

  const AdvisoryCategoryModel({
    this.catId,
    this.catFatherId,
    this.catMenus,
    this.catTitle,
    this.catNote,
    this.catPic,
    this.catSup,
    this.catDate,
    this.catPicActive,
    this.catLan,
    this.catPos,
    this.catActive,
    this.catShowMenu,
    this.catShowMain,
    this.catAgent,
  });

  factory AdvisoryCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$AdvisoryCategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$AdvisoryCategoryModelToJson(this);
}
