import 'package:injectable/injectable.dart';

import '../model/biography_article.dart';
import '../repository/biography_repository.dart';

@injectable
class GetBiographyUseCase {
  final BiographyRepository _repository;

  GetBiographyUseCase(this._repository);

  Future<BiographyArticle> call() async {
    return await _repository.getBiographyArticle();
  }
}
