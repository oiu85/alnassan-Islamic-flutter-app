import 'package:dartz/dartz.dart';

import '../../data/model/advisory_categories_model.dart';

abstract class AdvisoryCategoriesRepository {
  Future<Either<String, AdvisoryCategoriesModel>> getAdvisoryCategories({
    int categoriesPerPage = 3,
    int categoriesPage = 1,
  });

  Future<Either<String, AdvisoryModel>> getRecentAdvisories();

  Future<Either<String, AdvisoryModel>> getPopularAdvisories();
}
