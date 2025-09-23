import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../bloc/advisory_bloc.dart';
import '../bloc/advisory_events.dart';
import '../bloc/advisory_states.dart';

class AddAdvisory extends StatefulWidget {
  const AddAdvisory({super.key});

  @override
  State<AddAdvisory> createState() => _AddAdvisoryState();
}

class _AddAdvisoryState extends State<AddAdvisory> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _questionController = TextEditingController();
  final _captchaController = TextEditingController();
  
  bool _isValidating = false;
  bool _isClearing = false;
  Timer? _validationTimer;

  @override
  void initState() {
    super.initState();
    // Generate initial captcha
    context.read<AdvisoryBloc>().add(const GenerateAdvisoryCaptchaEvent());
  }

  @override
  void dispose() {
    _validationTimer?.cancel();
    _nameController.dispose();
    _emailController.dispose();
    _questionController.dispose();
    _captchaController.dispose();
    super.dispose();
  }

  void _validateForm() {
    // Don't validate if we're clearing the form
    if (_isClearing) return;
    
    // Cancel previous timer
    _validationTimer?.cancel();
    
    // Set a new timer to validate after user stops typing
    _validationTimer = Timer(const Duration(milliseconds: 300), () {
      if (mounted && !_isValidating && !_isClearing) {
        _isValidating = true;
        context.read<AdvisoryBloc>().add(
          ValidateAdvisoryFormEvent(
            advisoryQuestion: _questionController.text,
            advisorySenderName: _nameController.text,
            advisorySenderEmail: _emailController.text,
            captchaCode: _captchaController.text,
          ),
        );
        
        // Reset validation flag after a short delay
        Future.delayed(const Duration(milliseconds: 100), () {
          if (mounted) {
            _isValidating = false;
          }
        });
      }
    });
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      context.read<AdvisoryBloc>().add(
        SubmitAdvisoryEvent(
          advisoryQuestion: _questionController.text,
          advisorySenderName: _nameController.text,
          advisorySenderEmail: _emailController.text,
          captchaCode: _captchaController.text,
        ),
      );
    }
  }

  void _generateNewCaptcha() {
    context.read<AdvisoryBloc>().add(const GenerateAdvisoryCaptchaEvent());
    _captchaController.clear();
  }

  void _clearAllFields() {
    if (_isClearing) return;
    
    _isClearing = true;
    
    // Cancel any pending validation
    _validationTimer?.cancel();
    
    // Clear all text controllers
    _nameController.clear();
    _emailController.clear();
    _questionController.clear();
    _captchaController.clear();
    
    // Reset form validation state
    _formKey.currentState?.reset();
    
    // Reset validation flag
    _isValidating = false;
    
    // Use BLoC to clear form state and generate new captcha
    context.read<AdvisoryBloc>().add(const ClearAdvisoryFormEvent());
    
    // Reset clearing flag after a delay
    Future.delayed(const Duration(milliseconds: 500), () {
      if (mounted) {
        _isClearing = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
      body: BlocConsumer<AdvisoryBloc, AdvisoryState>(
        listener: (context, state) {
          if (state.submissionStatus.isSuccess() && state.successMessage != null && !_isClearing) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('تم إرسال سؤالك بنجاح! سنتواصل معك قريباً.'),
                backgroundColor: Colors.green,
                duration: const Duration(seconds: 4),
              ),
            );
            // Clear form on success
            _clearAllFields();
          } else if (state.submissionStatus.isFail() && state.submissionError != null) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('حدث خطأ في إرسال السؤال. يرجى المحاولة مرة أخرى.'),
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
                    "إضافة فتوى:",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: FontFamily.tajawal,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    child: Text(
                      "الأخ الكريم الزائر، الأخت الكريمة الزائرة،\n"
                      "السلام عليكم ورحمة الله وبركاته\n"
                      "وأهلاً وسهلاً ومرحباً بكم في هذا التطبيق،\n"
                      "ونرجو الله عز وجل أن يجعل فيه النفع لما فيه صلاح ديننا ودنيانا وآخرتنا،\n"
                      "ونرجو منكم أن تخصونا بدعوة صالحة.\n\n"
                      "أما بعد:\n"
                      "فيرجى التكرم بالقيام بعملية البحث عن جواب أسئلتكم\n"
                      "فربما أن يكون موجوداً،\n"
                      "وإن وجدتم صعوبة في البحث فأهلاً وسهلاً بكم.\n\n"
                      "ونرجو الله أن يسددنا في أقوالنا وأفعالنا.",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: FontFamily.tajawal,
                        height: 1,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    textDirection: TextDirection.ltr,
                    "اخوكم أحمد شريف النعسان",
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: FontFamily.tajawal,
                      height: 1,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // Name Field
                  Row(
                    children: [
                      Text(
                        "اسم المستخدم",
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
                  const SizedBox(height: 2),
                  Text(
                    "الرجاء ادخال بريدك الالكتروني هنا لكي تتم إرسال الاجابة عليه",
                    style: TextStyle(
                      fontSize: 10,
                      fontFamily: FontFamily.tajawal,
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // Question Field
                  Row(
                    children: [
                      Text(
                        "الرجاء كتابة السؤال",
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
                    controller: _questionController,
                    maxLines: 6,
                    onChanged: (_) => _validateForm(),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'يرجى إدخال السؤال';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: AppColors.ftawaFiledColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: "اكتب سؤالك هنا",
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
                      child: state.submissionStatus.isLoading()
                          ? const CircularProgressIndicator(color: Colors.white)
                          : Text(
                              'إرسال السؤال',
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
