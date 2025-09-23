import 'package:dartz/dartz.dart';
import '../model/contact_request.dart';
import '../model/contact_response.dart';

abstract class ContactRepository {
  Future<Either<String, ContactResponse>> submitContactForm(ContactRequest request);
}
