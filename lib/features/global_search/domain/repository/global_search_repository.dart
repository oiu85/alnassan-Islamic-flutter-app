import 'package:dartz/dartz.dart';
import '../../data/model/search_response_model.dart';
import '../../data/model/article_detail_model.dart';
import '../../data/model/sound_detail_model.dart';
import '../../../advisory_fatwa/domain/model/advisory_detail.dart';

abstract class GlobalSearchRepository {
  Future<Either<String, SearchResponseModel>> searchContent({
    required String query,
    String? type,
    int page = 1,
    int perPage = 10,
  });

  Future<Either<String, ArticleDetailModel>> getArticleDetail({
    required int articleId,
  });

  Future<Either<String, SoundDetailModel>> getSoundDetail({
    required int soundId,
  });

  Future<Either<String, AdvisoryDetail>> getAdvisoryDetail({
    required int advisoryId,
  });
}
