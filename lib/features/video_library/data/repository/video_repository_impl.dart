import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../config/api_config.dart';
import '../../../../core/network/network_client.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../model/video_model.dart';
import '../mapper/video_mapper.dart';
import '../../domain/repository/video_repository.dart';
import '../../domain/model/video.dart';

@Injectable(as: VideoRepository)
class VideoRepositoryImpl implements VideoRepository {
  final NetworkClient _networkClient;

  VideoRepositoryImpl(this._networkClient);

  @override
  Future<Either<String, List<Video>>> getVideos({
    String sort = '-video_priority',
    int page = 1,
    int perpage = 8,
  }) async {
    try {
      AppLogger.business('Fetching videos', {
        'sort': sort,
        'page': page,
        'perpage': perpage,
      });

      final url = ApiConfig.getVideos(
        sort: sort,
        page: page,
        perpage: perpage,
      );

      final response = await _networkClient.get(url);

      AppLogger.apiResponse('VideoRepository - getVideos', {
        'statusCode': response.statusCode,
        'data': response.data,
      });

      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No data received from API');
        return const Left('No data received from server');
      }

      final rawData = Map<String, dynamic>.from(response.data as Map<String, dynamic>);
      final videoResponse = VideoResponse.fromJson(rawData);

      if (videoResponse.status != 'success') {
        AppLogger.warning('API returned non-success status: ${videoResponse.status}');
        return const Left('API returned non-success status');
      }

      final videos = VideoMapper.mapFromListModel(videoResponse.data);
      AppLogger.business('Videos mapped successfully', {'count': videos.length});

      return Right(videos);
    } on DioException catch (e) {
      AppLogger.apiError('VideoRepository - getVideos', e);
      return Left(e.message ?? 'Connection attempt failed');
    } catch (e) {
      AppLogger.error('Video data mapping error', e);
      return const Left('Error processing server response');
    }
  }

  @override
  Future<Either<String, VideoPaginationInfo>> getVideoPagination({
    String sort = '-video_priority',
    int page = 1,
    int perpage = 8,
  }) async {
    try {
      AppLogger.business('Fetching video pagination', {
        'sort': sort,
        'page': page,
        'perpage': perpage,
      });

      final url = ApiConfig.getVideos(
        sort: sort,
        page: page,
        perpage: perpage,
      );

      final response = await _networkClient.get(url);

      AppLogger.apiResponse('VideoRepository - getVideoPagination', {
        'statusCode': response.statusCode,
        'data': response.data,
      });

      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No data received from API');
        return const Left('No data received from server');
      }

      final rawData = Map<String, dynamic>.from(response.data as Map<String, dynamic>);
      final videoResponse = VideoResponse.fromJson(rawData);

      if (videoResponse.status != 'success') {
        AppLogger.warning('API returned non-success status: ${videoResponse.status}');
        return const Left('API returned non-success status');
      }

      if (videoResponse.meta?.pagination == null) {
        AppLogger.warning('No pagination data found in response');
        return const Left('No pagination data found');
      }

      final paginationInfo = VideoMapper.mapPaginationFromModel(videoResponse.meta!.pagination!);
      AppLogger.business('Pagination info mapped successfully', {
        'currentPage': paginationInfo.currentPage,
        'total': paginationInfo.total,
        'lastPage': paginationInfo.lastPage,
      });

      return Right(paginationInfo);
    } on DioException catch (e) {
      AppLogger.apiError('VideoRepository - getVideoPagination', e);
      return Left(e.message ?? 'Connection attempt failed');
    } catch (e) {
      AppLogger.error('Video pagination mapping error', e);
      return const Left('Error processing server response');
    }
  }
}
