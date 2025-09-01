import 'package:dio/dio.dart';

import '../model/home_model.dart';

abstract class HomeRepository {
  /// Fetches home page data from the API
  ///
  /// Returns a [HomeModel] containing home page data on success
  /// Throws [DioException] if the request fails
  Future<HomeModel> getHomeData();
}
