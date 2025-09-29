class ArticleResponse {
  final String? status;
  final ArticleData? data;

  ArticleResponse({this.status, this.data});

  factory ArticleResponse.fromJson(Map<String, dynamic> json) {
    return ArticleResponse(
      status: json['status'] as String?,
      data: json['data'] != null ? ArticleData.fromJson(json['data']) : null,
    );
  }
}

class ArticleData {
  final int? articleId;
  final String? articleTitle;
  final String? articleSummary;
  final String? articleDes;
  final String? articleCatId;
  final String? articlePic;
  final String? articleVisitor;
  final String? articleDate;

  ArticleData({
    this.articleId,
    this.articleTitle,
    this.articleSummary,
    this.articleDes,
    this.articleCatId,
    this.articlePic,
    this.articleVisitor,
    this.articleDate,
  });

  factory ArticleData.fromJson(Map<String, dynamic> json) {
    return ArticleData(
      articleId: json['article_id'] as int?,
      articleTitle: json['article_title'] as String?,
      articleSummary: json['article_summary'] as String?,
      articleDes: json['article_des'] as String?,
      articleCatId: json['article_cat_id'] as String?,
      articlePic: json['article_pic'] as String?,
      articleVisitor: json['article_visitor'] as String?,
      articleDate: json['article_date'] as String?,
    );
  }
}
