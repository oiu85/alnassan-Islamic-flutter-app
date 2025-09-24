import 'package:equatable/equatable.dart';

class AdvisoryDetail extends Equatable {
  final int? advisoryId;
  final String? advisoryCatId;
  final String? advisorySoundId;
  final String? advisoryTitle;
  final String? advisoryQuestion;
  final String? advisoryQuestionDate;
  final String? advisoryAnswer;
  final String? advisoryAnswerDate;
  final int? advisoryVisitor;
  final String? advisoryLastAdvisory;
  final String? advisoryPriority;
  final String? advisoryActiveVote;
  final String? advisoryActiveHint;
  final String? advisoryPic;
  final bool? advisoryPicActive;
  final String? advisoryPicPos;
  final String? advisorySenderName;
  final String? advisorySenderEmail;
  final String? advisoryPublisherId;
  final String? advisorySource;
  final String? advisorySourceUrl;
  final String? advisoryYoutubeId;
  final String? advisoryFile;
  final String? advisoryUserAddHintNsup;
  final bool? advisoryIsNew;
  final bool? advisoryActive;
  final AdvisoryCategory? category;

  const AdvisoryDetail({
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

  factory AdvisoryDetail.fromJson(Map<String, dynamic> json) {
    return AdvisoryDetail(
      advisoryId: json['advisory_id'],
      advisoryCatId: json['advisory_cat_id'],
      advisorySoundId: json['advisory_sound_id'],
      advisoryTitle: json['advisory_title'],
      advisoryQuestion: json['advisory_question'],
      advisoryQuestionDate: json['advisory_question_date'],
      advisoryAnswer: json['advisory_answer'],
      advisoryAnswerDate: json['advisory_answer_date'],
      advisoryVisitor: json['advisory_visitor'],
      advisoryLastAdvisory: json['advisory_last_advisory'],
      advisoryPriority: json['advisory_priority'],
      advisoryActiveVote: json['advisory_active_vote'],
      advisoryActiveHint: json['advisory_active_hint'],
      advisoryPic: json['advisory_pic'],
      advisoryPicActive: json['advisory_pic_active'],
      advisoryPicPos: json['advisory_pic_pos'],
      advisorySenderName: json['advisory_sender_name'],
      advisorySenderEmail: json['advisory_sender_email'],
      advisoryPublisherId: json['advisory_publisher_id'],
      advisorySource: json['advisory_source'],
      advisorySourceUrl: json['advisory_source_url'],
      advisoryYoutubeId: json['advisory_youtube_id'],
      advisoryFile: json['advisory_file'],
      advisoryUserAddHintNsup: json['advisory_user_add_hint_nsup'],
      advisoryIsNew: json['advisory_is_new'],
      advisoryActive: json['advisory_active'],
      category: json['category'] != null ? AdvisoryCategory.fromJson(json['category']) : null,
    );
  }

  @override
  List<Object?> get props => [
        advisoryId,
        advisoryCatId,
        advisoryTitle,
        advisoryQuestion,
        advisoryAnswer,
        advisoryQuestionDate,
        advisoryAnswerDate,
        advisoryVisitor,
        category,
      ];
}

class AdvisoryCategory extends Equatable {
  final int? catId;
  final String? catFatherId;
  final String? catMenus;
  final String? catTitle;
  final String? catNote;
  final String? catPic;
  final String? catSup;
  final String? catDate;
  final String? catPicActive;
  final String? catLan;
  final String? catPos;
  final String? catActive;
  final String? catShowMenu;
  final String? catShowMain;
  final String? catAgent;

  const AdvisoryCategory({
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

  factory AdvisoryCategory.fromJson(Map<String, dynamic> json) {
    return AdvisoryCategory(
      catId: json['cat_id'],
      catFatherId: json['cat_father_id'],
      catMenus: json['cat_menus'],
      catTitle: json['cat_title'],
      catNote: json['cat_note'],
      catPic: json['cat_pic'],
      catSup: json['cat_sup'],
      catDate: json['cat_date'],
      catPicActive: json['cat_pic_active'],
      catLan: json['cat_lan'],
      catPos: json['cat_pos'],
      catActive: json['cat_active'],
      catShowMenu: json['cat_show_menu'],
      catShowMain: json['cat_show_main'],
      catAgent: json['cat_agent'],
    );
  }

  @override
  List<Object?> get props => [
        catId,
        catFatherId,
        catTitle,
        catNote,
        catPic,
      ];
}

class AdvisoryDetailResponse extends Equatable {
  final String? status;
  final AdvisoryDetail? data;

  const AdvisoryDetailResponse({
    this.status,
    this.data,
  });

  factory AdvisoryDetailResponse.fromJson(Map<String, dynamic> json) {
    return AdvisoryDetailResponse(
      status: json['status'],
      data: json['data'] != null ? AdvisoryDetail.fromJson(json['data']) : null,
    );
  }

  @override
  List<Object?> get props => [status, data];
}
