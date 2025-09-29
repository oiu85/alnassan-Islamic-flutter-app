import 'package:injectable/injectable.dart';
import '../../domain/model/contact_request.dart';
import '../../domain/model/contact_response.dart';
import '../../domain/repository/contact_repository.dart';
import '../model/contact_remote_datasource.dart';

@Injectable(as: ContactRepository)
class ContactRepositoryImpl implements ContactRepository {
  final ContactRemoteDataSource _remoteDataSource;

  ContactRepositoryImpl(this._remoteDataSource);

  @override
  Future<ContactResponse> submitContactForm(ContactRequest request) async {
    return await _remoteDataSource.submitContactForm(request);
  }
}
