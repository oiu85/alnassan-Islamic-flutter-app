import 'package:dio/dio.dart';
import 'package:dartz/dartz.dart';

import '../../../../config/api_config.dart';
import '../../../../core/network/network_client.dart';
import '../model/advisory_categories_model.dart';
import '../model/category_details_model.dart';
import '../model/advisory_detail.dart';
import '../model/fatwa_list_model.dart';
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

  @override
  Future<Either<String, AdvisorySubmissionResponse>> submitAdvisoryQuestion(
    AdvisorySubmissionRequest request,
  ) async {
    try {
      final response = await _networkClient.post(
        ApiConfig.submitAdvisoryUrl,
        data: request.toJson(),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data;
        final model = AdvisorySubmissionResponse.fromJson(data);
        return Right(model);
      } else {
        String errorMessage = 'عذراً، حدث خطأ أثناء إرسال السؤال';
        if (response.data is Map<String, dynamic>) {
          final data = response.data as Map<String, dynamic>;
          if (data.containsKey('message')) {
            String apiMessage = data['message'].toString();
            if (apiMessage.contains('Validation failed')) {
              errorMessage = 'يرجى التحقق من صحة البيانات المدخلة';
            } else if (apiMessage.contains('The advisory_question field is required')) {
              errorMessage = 'يرجى إدخال السؤال';
            } else if (apiMessage.contains('The advisory_sender_name field is required')) {
              errorMessage = 'يرجى إدخال اسم المرسل';
            } else if (apiMessage.contains('The advisory_sender_email field is required')) {
              errorMessage = 'يرجى إدخال البريد الإلكتروني';
            } else if (apiMessage.contains('The advisory_sender_email field must be a valid email')) {
              errorMessage = 'البريد الإلكتروني غير صحيح';
            } else {
              errorMessage = apiMessage;
            }
          }
        }
        return Left(errorMessage);
      }
    } on DioException catch (e) {
      String errorMessage = 'عذراً، حدث خطأ أثناء إرسال السؤال';
      if (e.response?.statusCode == 422) {
        errorMessage = 'يرجى التحقق من صحة البيانات المدخلة';
      } else if (e.response?.statusCode == 400) {
        errorMessage = 'البيانات المدخلة غير صحيحة';
      } else if (e.response?.statusCode == 500) {
        errorMessage = 'عذراً، حدث خطأ في الخادم. يرجى المحاولة لاحقاً';
      } else if (e.type == DioExceptionType.connectionTimeout ||
                 e.type == DioExceptionType.receiveTimeout) {
        errorMessage = 'انتهت مهلة الاتصال. يرجى التحقق من الإنترنت والمحاولة مرة أخرى';
      } else if (e.type == DioExceptionType.connectionError) {
        errorMessage = 'لا يوجد اتصال بالإنترنت. يرجى التحقق من الاتصال والمحاولة مرة أخرى';
      }
      return Left(errorMessage);
    } catch (e) {
      return Left('عذراً، حدث خطأ غير متوقع. يرجى المحاولة مرة أخرى');
    }
  }
  
  @override
  Future<Either<String, CategoryDetailsModel>> getCategoryDetails({
    required int categoryId,
    int childrenPerPage = 10,
    int childrenPage = 1,
    int fatwasPerChild = 3,
  }) async {
    try {
      final url = ApiConfig.getAdvisoryCategoryDetails(
        categoryId: categoryId,
        childrenPerPage: childrenPerPage,
        childrenPage: childrenPage,
        fatwasPerChild: fatwasPerChild,
      );

      final response = await _networkClient.get(url);

      if (response.statusCode == 200) {
        final data = response.data;
        final model = CategoryDetailsModel.fromJson(data);
        return Right(model);
      } else {
        return Left('Failed to load category details: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      String errorMessage = 'حدث خطأ أثناء تحميل تفاصيل القسم';
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        errorMessage = 'انتهت مهلة الاتصال. يرجى التحقق من الإنترنت والمحاولة مرة أخرى';
      } else if (e.type == DioExceptionType.connectionError) {
        errorMessage = 'لا يوجد اتصال بالإنترنت. يرجى التحقق من الاتصال والمحاولة مرة أخرى';
      }
      return Left(errorMessage);
    } catch (e) {
      return Left('حدث خطأ غير متوقع: $e');
    }
  }
  
  @override
  Future<Either<String, AdvisoryDetailResponse>> getAdvisoryDetails(int advisoryId) async {
    try {
      final url = ApiConfig.getAdvisoryDetails(advisoryId);
      final response = await _networkClient.get(url);

      if (response.statusCode == 200) {
        final data = response.data;
        final model = AdvisoryDetailResponse.fromJson(data);
        return Right(model);
      } else {
        return Left('Failed to load advisory details: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      String errorMessage = 'حدث خطأ أثناء تحميل تفاصيل الفتوى';
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        errorMessage = 'انتهت مهلة الاتصال. يرجى التحقق من الإنترنت والمحاولة مرة أخرى';
      } else if (e.type == DioExceptionType.connectionError) {
        errorMessage = 'لا يوجد اتصال بالإنترنت. يرجى التحقق من الاتصال والمحاولة مرة أخرى';
      }
      return Left(errorMessage);
    } catch (e) {
      return Left('حدث خطأ غير متوقع: $e');
    }
  }
  
  @override
  Future<Either<String, FatwaListModel>> getFatwasByCategory({
    required int categoryId,
    int perPage = 5,
    int page = 1,
    String sortBy = 'priority',
    String sortOrder = 'desc',
  }) async {
    try {
      final url = ApiConfig.getFatwasByCategory(
        categoryId: categoryId,
        perPage: perPage,
        page: page,
        sortBy: sortBy,
        sortOrder: sortOrder,
      );

      final response = await _networkClient.get(url);

      if (response.statusCode == 200) {
        final data = response.data;
        final model = FatwaListModel.fromJson(data);
        return Right(model);
      } else {
        return Left('Failed to load fatwas: ${response.statusMessage}');
      }
    } on DioException catch (e) {
      String errorMessage = 'حدث خطأ أثناء تحميل الفتاوى';
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout) {
        errorMessage = 'انتهت مهلة الاتصال. يرجى التحقق من الإنترنت والمحاولة مرة أخرى';
      } else if (e.type == DioExceptionType.connectionError) {
        errorMessage = 'لا يوجد اتصال بالإنترنت. يرجى التحقق من الاتصال والمحاولة مرة أخرى';
      }
      return Left(errorMessage);
    } catch (e) {
      return Left('حدث خطأ غير متوقع: $e');
    }
  }
}
