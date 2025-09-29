import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../bloc/contact_bloc.dart';
import '../bloc/contact_events.dart';
import '../bloc/contact_state.dart';

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
    context.read<ContactBloc>().add(ValidateFormEvent(
      name: _nameController.text,
      email: _emailController.text,
      phone: _phoneController.text,
      country: _countryController.text,
      message: _messageController.text,
      captcha: _captchaController.text,
    ));
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      context.read<ContactBloc>().add(SubmitFormEvent(
        name: _nameController.text,
        email: _emailController.text,
        phone: _phoneController.text,
        country: _countryController.text,
        message: _messageController.text,
      ));
    }
  }

  void _resetForm() {
    _formKey.currentState?.reset();
    _nameController.clear();
    _emailController.clear();
    _phoneController.clear();
    _countryController.clear();
    _messageController.clear();
    _captchaController.clear();
    context.read<ContactBloc>().add(const ResetContactFormEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ContactBloc, ContactState>(
      listener: (context, state) {
        if (state.status.isSuccess()) {
          // Generate success message from bloc
          context.read<ContactBloc>().add(const GetSuccessMessageEvent());
          
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Container(
                padding: EdgeInsets.symmetric(vertical: 4.h),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.check_circle,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'تم الإرسال بنجاح!',
                            style:  TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 16.f,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            state.successMessage.isNotEmpty 
                                ? state.successMessage 
                                : 'تم إرسال رسالتك بنجاح! سنتواصل معك قريباً',
                            style:  TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 13.f,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              backgroundColor: Colors.green.shade600,
              duration: Duration(seconds: 5),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.all(16.w),
              elevation: 8,
            ),
          );
          _resetForm();
        } else if (state.status.isFail()) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Container(
                padding: EdgeInsets.symmetric(vertical: 4.h),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.w),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.error_outline,
                        color: Colors.white,
                        size: 24,
                      ),
                    ),
                    SizedBox(width: 12.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'حدث خطأ!',
                            style:  TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 16.f,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Text(
                            state.error ?? 'عذراً، حدث خطأ أثناء إرسال الرسالة. يرجى المحاولة مرة أخرى',
                            style:  TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 13.f,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              backgroundColor: Colors.red.shade600,
              duration: Duration(seconds: 6),
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.all(16.w),
              elevation: 8,
              action: SnackBarAction(
                label: 'إعادة المحاولة',
                textColor: Colors.white,
                backgroundColor: Colors.white.withValues(alpha: 0.2),
                onPressed: () {
                  // Retry the form submission using bloc
                  context.read<ContactBloc>().add(SubmitFormEvent(
                    name: _nameController.text,
                    email: _emailController.text,
                    phone: _phoneController.text,
                    country: _countryController.text,
                    message: _messageController.text,
                  ));
                },
              ),
            ),
          );
        }
      },
      child: AppScaffold.custom(
        body: BlocBuilder<ContactBloc, ContactState>(
          builder: (context, state) {
            // Show form for initial and success states, loading only when actually submitting
            if (state.status.isLoading()) {
              return Stack(
                children: [
                  _buildForm(context, state),
                  Container(
                    color: Colors.black.withValues(alpha: 0.3),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(20.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withValues(alpha: 0.1),
                              blurRadius: 10,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                            ),
                            SizedBox(height: 16.h),
                            Text(
                              'جاري إرسال رسالتك...',
                              style: TextStyle(
                                fontFamily: FontFamily.tajawal,
                                fontSize: 16.f,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              'يرجى الانتظار قليلاً',
                              style: TextStyle(
                                fontFamily: FontFamily.tajawal,
                                fontSize: 12.f,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              // Show form for initial, success, and fail states
              return _buildForm(context, state);
            }
          },
        ),
      ),
    );
  }

  Widget _buildForm(BuildContext context, ContactState state) {
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
                  return 'يرجى إدخال اسمك الكامل';
                }
                if (value.trim().length < 2) {
                  return 'الاسم قصير جداً. يرجى إدخال اسم صحيح';
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
                  return 'يرجى إدخال بريدك الإلكتروني';
                }
                if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                  return 'البريد الإلكتروني غير صحيح. مثال: example@gmail.com';
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
                  return 'يرجى إدخال رقم هاتفك';
                }
                if (value.trim().length < 8) {
                  return 'رقم الهاتف قصير جداً. يرجى إدخال رقم صحيح';
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
                  return 'يرجى إدخال اسم الدولة';
                }
                if (value.trim().length < 2) {
                  return 'اسم الدولة قصير جداً. يرجى إدخال اسم صحيح';
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _messageController,
                  maxLines: 6,
                  onChanged: (_) {
                    _validateForm();
                    setState(() {}); // Update character counter
                  },
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'يرجى إدخال الرسالة';
                    }
                    if (value.trim().length < 10) {
                      return 'يجب أن تكون الرسالة 10 أحرف على الأقل';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: AppColors.ftawaFiledColor,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'اكتب رسالتك هنا (10 أحرف على الأقل)',
                    hintStyle: TextStyle(
                      fontSize: 12,
                      fontFamily: FontFamily.tajawal,
                      height: 1,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  '${_messageController.text.length}/10 أحرف',
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: FontFamily.tajawal,
                    color: _messageController.text.length >= 10 ? Colors.green : Colors.red,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
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
            Container(
              width: double.infinity,
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
            const SizedBox(height: 20),
            TextFormField(
              controller: _captchaController,
              onChanged: (_) => _validateForm(),
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'يرجى إدخال رمز التحقق الظاهر أعلاه';
                    }
                    if (value.trim() != state.captchaCode) {
                      return 'رمز التحقق غير صحيح. يرجى إعادة المحاولة';
                    }
                    return null;
                  },
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.ftawaFiledColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
                hintText: 'ادخل الرقم هنا ',
                hintStyle: TextStyle(
                  fontSize: 12,
                  fontFamily: FontFamily.tajawal,
                  height: 1,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<ContactBloc>().add(const GenerateCaptchaEvent());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'تحديث الرمز',
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: state.isFormValid && state.isCaptchaValid
                        ? _submitForm
                        : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: state.isFormValid && state.isCaptchaValid
                          ? AppColors.primary
                          : Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'إرسال الرسالة',
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
