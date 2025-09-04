import 'package:equatable/equatable.dart';

class BiographyArticle extends Equatable {
  final int? id;
  final String? title;
  final String? summary;
  final String? content;
  final String? categoryId;
  final String? imageUrl;
  final String? visitCount;
  final String? date;

  const BiographyArticle({
    this.id,
    this.title,
    this.summary,
    this.content,
    this.categoryId,
    this.imageUrl,
    this.visitCount,
    this.date,
  });

  @override
  List<Object?> get props => [
    id, 
    title, 
    summary, 
    content, 
    categoryId, 
    imageUrl,
    visitCount,
    date,
  ];
}
