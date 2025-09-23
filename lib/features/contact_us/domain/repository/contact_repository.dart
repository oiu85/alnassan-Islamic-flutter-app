import '../model/contact_request.dart';
import '../model/contact_response.dart';

abstract class ContactRepository {
  Future<ContactResponse> submitContactForm(ContactRequest request);
}
