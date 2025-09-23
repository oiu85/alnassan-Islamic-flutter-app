import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import 'package:nassan_app/features/contact_us/presentation/bloc/contact_bloc.dart';
import 'package:nassan_app/features/contact_us/presentation/bloc/contact_event.dart';
import 'package:nassan_app/features/contact_us/presentation/bloc/contact_state.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _countryController = TextEditingController();
  final _messageController = TextEditingController();
  final _captchaController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Generate initial captcha
    context.read<ContactBloc>().add(const GenerateCaptchaEvent());
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _countryController.dispose();
    _messageController.dispose();
    _captchaController.dispose();
    super.dispose();
  }

  void _validateForm() {
    context.read<ContactBloc>().add(
      ValidateFormEvent(
        name: _nameController.text,
        email: _emailController.text,
        message: _messageController.text,
        phone: _phoneController.text,
        country: _countryController.text,
        captchaCode: _captchaController.text,
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      context.read<ContactBloc>().add(
        SubmitContactFormEvent(
          name: _nameController.text,
          email: _emailController.text,
          message: _messageController.text,
          phone: _phoneController.text,
          country: _countryController.text,
          captchaCode: _captchaController.text,
        ),
      );
    }
  }

  void _generateNewCaptcha() {
    context.read<ContactBloc>().add(const GenerateCaptchaEvent());
    _captchaController.clear();
  }

  void _clearAllFields() {
    // Clear all text controllers
    _nameController.clear();
    _emailController.clear();
    _phoneController.clear();
    _countryController.clear();
    _messageController.clear();
    _captchaController.clear();
    
    // Reset form validation state
    _formKey.currentState?.reset();
    
    // Use BLoC to clear form state and generate new captcha
    context.read<ContactBloc>().add(const ClearFormEvent());
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold.custom(
      body: BlocConsumer<ContactBloc, ContactState>(
        listener: (context, state) {
          if (state.status.isSuccess() && state.successMessage != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('تم إرسال رسالتك بنجاح! سنتواصل معك قريباً.'),
                backgroundColor: Colors.green,
                duration: const Duration(seconds: 4),
              ),
            );
            // Clear form on success
            _clearAllFields();
          } else if (state.status.isFail() && state.error != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('حدث خطأ في إرسال الرسالة. يرجى المحاولة مرة أخرى.'),
                backgroundColor: Colors.red,
                duration: const Duration(seconds: 4),
              ),
            );
          }
        },
        builder: (context, state) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Form(
              key: _formKey,
              child: ListView(
                children: [
                  const SizedBox(height: 10),
                  Text(
                    "اتصل بنا",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: FontFamily.tajawal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // Name Field
                  Row(
                    children: [
                      Text(
                        "اسم المرسل",
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 14,
                        ),
                      ),
                      Text('*', style: TextStyle(color: Colors.red, fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _nameController,
                    onChanged: (_) => _validateForm(),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'يرجى إدخال الاسم';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.ftawaFiledColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      hintText: 'ادخل اسمك هنا',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontFamily: FontFamily.tajawal,
                        height: 1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  
                  // Email Field
                  Row(
                    children: [
                      Text(
                        "البريد الإلكتروني",
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 14,
                        ),
                      ),
                      Text('*', style: TextStyle(color: Colors.red, fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (_) => _validateForm(),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'يرجى إدخال البريد الإلكتروني';
                      }
                      if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                        return 'يرجى إدخال بريد إلكتروني صحيح';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.ftawaFiledColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      hintText: "uiuxcreative2021@gmail.com",
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontFamily: FontFamily.tajawal,
                        height: 1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Phone Field
                  Row(
                    children: [
                      Text(
                        "رقم الهاتف",
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 14,
                        ),
                      ),
                      Text('*', style: TextStyle(color: Colors.red, fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _phoneController,
                    keyboardType: TextInputType.phone,
                    onChanged: (_) => _validateForm(),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'يرجى إدخال رقم الهاتف';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.ftawaFiledColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      hintText: "+9xxxxxxxxx",
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontFamily: FontFamily.tajawal,
                        height: 1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // Country Field
                  Row(
                    children: [
                      Text(
                        "الدولة",
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 14,
                        ),
                      ),
                      Text('*', style: TextStyle(color: Colors.red, fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _countryController,
                    onChanged: (_) => _validateForm(),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'يرجى إدخال الدولة';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.ftawaFiledColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      hintText: "ادخل الدولة",
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontFamily: FontFamily.tajawal,
                        height: 1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Message Field
                  Row(
                    children: [
                      Text(
                        "الرسالة",
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 14,
                        ),
                      ),
                      Text('*', style: TextStyle(color: Colors.red, fontSize: 16)),
                    ],
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    controller: _messageController,
                    maxLines: 6,
                    onChanged: (_) => _validateForm(),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'يرجى إدخال الرسالة';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.ftawaFiledColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'اكتب رسالتك هنا...',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontFamily: FontFamily.tajawal,
                        height: 1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  
                  // Captcha Section
                  Text(
                    "تنويه",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: FontFamily.tajawal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "الرجاء تأكيد كتابة رمز التسجيل الظاهر أمامك",
                    style: TextStyle(fontFamily: FontFamily.tajawal, fontSize: 14),
                  ),
                  const SizedBox(height: 10),
                  
                  // Captcha Display
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: AppColors.grey.withAlpha(50),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              state.captchaCode,
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: FontFamily.tajawal,
                                color: AppColors.grey.withAlpha(150),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      IconButton(
                        onPressed: _generateNewCaptcha,
                        icon: Icon(Icons.refresh),
                        tooltip: 'تحديث الرمز',
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  
                  // Captcha Input
                  TextFormField(
                    controller: _captchaController,
                    onChanged: (_) => _validateForm(),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'يرجى إدخال رمز التحقق';
                      }
                      if (value.trim() != state.captchaCode) {
                        return 'رمز التحقق غير صحيح';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.ftawaFiledColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(60),
                      ),
                      hintText: 'ادخل الرقم هنا',
                      hintStyle: TextStyle(
                        fontSize: 12,
                        fontFamily: FontFamily.tajawal,
                        height: 1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  
                  // Submit Button
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: state.canSubmit ? _submitForm : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: state.canSubmit 
                            ? AppColors.primary 
                            : AppColors.grey.withOpacity(0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: state.status.isLoading()
                          ? const CircularProgressIndicator(color: Colors.white)
                          : Text(
                              'إرسال الرسالة',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: FontFamily.tajawal,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
