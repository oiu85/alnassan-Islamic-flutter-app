import 'package:dartz/dartz.dart';

import '../data/model/home_model.dart';

abstract class HomeRepository {
  /// Fetches home page data from the API
  ///
  /// Returns [Right<HomeModel>] containing home page data on success
  /// Returns [Left<String>] with error message on failure
  Future<Either<String, HomeModel>> getHomeData();
}
