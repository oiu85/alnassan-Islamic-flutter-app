import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../config/api_config.dart';
import '../../../../core/network/network_client.dart';
import '../../domain/model/contact_request.dart';
import '../../domain/model/contact_response.dart';
import '../../domain/repository/contact_repository.dart';

@Injectable(as: ContactRepository)
class ContactRepositoryImpl implements ContactRepository {
  final NetworkClient _networkClient;

  ContactRepositoryImpl(this._networkClient);

  @override
  Future<Either<String, ContactResponse>> submitContactForm(ContactRequest request) async {
    try {
      final response = await _networkClient.post(
        ApiConfig.contactUsUrl,
        data: request.toJson(),
      );

      final contactResponse = ContactResponse.fromJson(response.data);
      return Right(contactResponse);
    } catch (e) {
      return Left(e.toString());
    }
  }
}
