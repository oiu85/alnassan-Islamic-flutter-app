import 'package:dio/dio.dart';
import '../../../../config/api_config.dart';
import '../../../../core/network/network_client.dart';
import '../../domain/model/contact_request.dart';
import '../../domain/model/contact_response.dart';

abstract class ContactRemoteDataSource {
  Future<ContactResponse> submitContactForm(ContactRequest request);
}

class ContactRemoteDataSourceImpl implements ContactRemoteDataSource {
  final NetworkClient _networkClient;

  ContactRemoteDataSourceImpl(this._networkClient);

  @override
  Future<ContactResponse> submitContactForm(ContactRequest request) async {
    try {
      final response = await _networkClient.post(
        ApiConfig.contactUsUrl,
        data: request.toJson(),
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        return ContactResponse.fromJson(response.data);
      } else {
        // Parse error message from response with user-friendly messages
        String errorMessage = 'عذراً، حدث خطأ أثناء إرسال الرسالة';
        if (response.data is Map<String, dynamic>) {
          final data = response.data as Map<String, dynamic>;
          if (data.containsKey('message')) {
            String apiMessage = data['message'].toString();
            // Convert API messages to user-friendly Arabic messages
            if (apiMessage.contains('Validation failed')) {
              errorMessage = 'يرجى التحقق من صحة البيانات المدخلة';
            } else if (apiMessage.contains('The message field must be at least 10 characters')) {
              errorMessage = 'الرسالة قصيرة جداً. يرجى كتابة رسالة أطول (10 أحرف على الأقل)';
            } else if (apiMessage.contains('The email field must be a valid email')) {
              errorMessage = 'البريد الإلكتروني غير صحيح. يرجى إدخال بريد إلكتروني صالح';
            } else if (apiMessage.contains('The name field is required')) {
              errorMessage = 'يرجى إدخال الاسم';
            } else if (apiMessage.contains('The email field is required')) {
              errorMessage = 'يرجى إدخال البريد الإلكتروني';
            } else if (apiMessage.contains('The phone field is required')) {
              errorMessage = 'يرجى إدخال رقم الهاتف';
            } else if (apiMessage.contains('The country field is required')) {
              errorMessage = 'يرجى إدخال الدولة';
            } else {
              errorMessage = apiMessage; // Use original message if no translation found
            }
          } else if (data.containsKey('errors')) {
            final errors = data['errors'] as Map<String, dynamic>;
            if (errors.containsKey('message')) {
              final messageErrors = errors['message'] as List;
              if (messageErrors.isNotEmpty) {
                String firstError = messageErrors.first.toString();
                if (firstError.contains('The message field must be at least 10 characters')) {
                  errorMessage = 'الرسالة قصيرة جداً. يرجى كتابة رسالة أطول (10 أحرف على الأقل)';
                } else if (firstError.contains('The email field must be a valid email')) {
                  errorMessage = 'البريد الإلكتروني غير صحيح. يرجى إدخال بريد إلكتروني صالح';
                } else {
                  errorMessage = firstError;
                }
              }
            }
          }
        }
        
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
          error: errorMessage,
        );
      }
    } on DioException {
      rethrow;
    } catch (e) {
      throw DioException(
        requestOptions: RequestOptions(path: ApiConfig.contactUsUrl),
        error: 'Unexpected error: ${e.toString()}',
      );
    }
  }
}
