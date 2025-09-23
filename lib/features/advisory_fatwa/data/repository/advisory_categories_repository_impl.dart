import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';

import '../../../../config/api_config.dart';
import '../../../../core/network/network_client.dart';
import '../model/advisory_categories_model.dart';
import '../../domain/repository/advisory_categories_repository.dart';

class AdvisoryCategoriesRepositoryImpl implements AdvisoryCategoriesRepository {
  final NetworkClient _networkClient;

  AdvisoryCategoriesRepositoryImpl(this._networkClient);

  @override
  Future<Either<String, AdvisoryCategoriesModel>> getAdvisoryCategories({
    int categoriesPerPage = 3,
    int categoriesPage = 1,
  }) async {
    try {
      final url = ApiConfig.getAdvisoryCategories(
        categoriesPerPage: categoriesPerPage,
        categoriesPage: categoriesPage,
      );

      final response = await _networkClient.get(url);

      if (response.statusCode == 200) {
        final data = response.data;
        final model = AdvisoryCategoriesModel.fromJson(data);
        return Right(model);
      } else {
        return Left('Failed to load advisory categories: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      return Left('Network error: ${e.message}');
    } catch (e) {
      return Left('Unexpected error: $e');
    }
  }

  @override
  Future<Either<String, AdvisoryModel>> getRecentAdvisories() async {
    try {
      final response = await _networkClient.get(ApiConfig.getRecentAdvisories);

      if (response.statusCode == 200) {
        final data = response.data;
        final model = AdvisoryModel.fromJson(data);
        return Right(model);
      } else {
        return Left('Failed to load recent advisories: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      return Left('Network error: ${e.message}');
    } catch (e) {
      return Left('Unexpected error: $e');
    }
  }

  @override
  Future<Either<String, AdvisoryModel>> getPopularAdvisories() async {
    try {
      final response = await _networkClient.get(ApiConfig.getPopularAdvisories);

      if (response.statusCode == 200) {
        final data = response.data;
        final model = AdvisoryModel.fromJson(data);
        return Right(model);
      } else {
        return Left('Failed to load popular advisories: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      return Left('Network error: ${e.message}');
    } catch (e) {
      return Left('Unexpected error: $e');
    }
  }
}
