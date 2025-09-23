import '../../../../config/api_config.dart';
import '../../../../core/network/network_client.dart';
import '../models/advisory_response_dto.dart';
import '../models/advisory_submission_request.dart';
import '../models/advisory_submission_response.dart';

abstract class AdvisoryRepository {
  Future<AdvisoryResponseDto> getRecentAdvisories();
  Future<AdvisoryResponseDto> getPopularAdvisories();
  Future<AdvisorySubmissionResponse> submitAdvisory(AdvisorySubmissionRequest request);
}

class AdvisoryRepositoryImpl implements AdvisoryRepository {
  final NetworkClient _networkClient;

  AdvisoryRepositoryImpl(this._networkClient);

  @override
  Future<AdvisoryResponseDto> getRecentAdvisories() async {
    try {
      final response = await _networkClient.get(
        ApiConfig.getRecentAdvisories,
      );

      return AdvisoryResponseDto.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to fetch recent advisories: $e');
    }
  }

  @override
  Future<AdvisoryResponseDto> getPopularAdvisories() async {
    try {
      final response = await _networkClient.get(
        ApiConfig.getPopularAdvisories,
      );

      return AdvisoryResponseDto.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to fetch popular advisories: $e');
    }
  }

  @override
  Future<AdvisorySubmissionResponse> submitAdvisory(AdvisorySubmissionRequest request) async {
    try {
      final response = await _networkClient.post(
        ApiConfig.submitAdvisoryUrl,
        data: request.toJson(),
      );

      return AdvisorySubmissionResponse.fromJson(response.data);
    } catch (e) {
      throw Exception('Failed to submit advisory: $e');
    }
  }
}
