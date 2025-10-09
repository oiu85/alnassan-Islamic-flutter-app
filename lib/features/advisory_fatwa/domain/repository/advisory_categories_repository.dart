import 'package:dartz/dartz.dart';

import '../../data/model/advisory_categories_model.dart';
import '../../data/model/category_details_model.dart';
import '../../data/model/advisory_detail.dart';
import '../../data/model/fatwa_list_model.dart';

abstract class AdvisoryCategoriesRepository {
  Future<Either<String, AdvisoryCategoriesModel>> getAdvisoryCategories({
    int categoriesPerPage = 3,
    int categoriesPage = 1,
  });

  Future<Either<String, AdvisoryModel>> getRecentAdvisories();

  Future<Either<String, AdvisoryModel>> getPopularAdvisories();

  Future<Either<String, AdvisorySubmissionResponse>> submitAdvisoryQuestion(
    AdvisorySubmissionRequest request,
  );

  Future<Either<String, CategoryDetailsModel>> getCategoryDetails({
    required int categoryId,
    int childrenPerPage = 10,
    int childrenPage = 1,
    int fatwasPerChild = 3,
  });
  
  Future<Either<String, AdvisoryDetailResponse>> getAdvisoryDetails(int advisoryId);
  
  Future<Either<String, FatwaListModel>> getFatwasByCategory({
    required int categoryId,
    int perPage = 5,
    int page = 1,
    String sortBy = 'priority',
    String sortOrder = 'desc',
  });
  
  Future<Either<String, AdvisoryModel>> searchAdvisories({
    String? query,
    int? advisoryId,
    int page = 1,
    int perPage = 10,
  });
}
