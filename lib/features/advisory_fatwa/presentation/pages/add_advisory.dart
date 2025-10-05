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

  @override
  void initState() {
    super.initState();
    // Reset any previous submission state
    context.read<AdvisoryBloc>().add(const ResetAdvisorySubmissionEvent());
    // Generate initial captcha
    context.read<AdvisoryBloc>().add(const GenerateAdvisoryCaptchaEvent());
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _questionController.dispose();
    _captchaController.dispose();
    super.dispose();
  }

  void _validateForm() {
    context.read<AdvisoryBloc>().add(ValidateAdvisoryFormEvent(
      question: _questionController.text,
      senderName: _nameController.text,
      senderEmail: _emailController.text,
      captcha: _captchaController.text,
    ));
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      context.read<AdvisoryBloc>().add(SubmitAdvisoryQuestionEvent(
        question: _questionController.text,
        senderName: _nameController.text,
        senderEmail: _emailController.text,
      ));
    }
  }

  void _resetForm() {
    _formKey.currentState?.reset();
    _nameController.clear();
    _emailController.clear();
    _questionController.clear();
    _captchaController.clear();
    context.read<AdvisoryBloc>().add(const ResetAdvisorySubmissionEvent());
    // Generate new captcha after reset
    context.read<AdvisoryBloc>().add(const GenerateAdvisoryCaptchaEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AdvisoryBloc, AdvisoryState>(
      listener: (context, state) {
        if (state.submissionStatus.isSuccess()) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Container(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
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
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'تم الإرسال بنجاح!',
                            style: const TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            state.successMessage.isNotEmpty 
                                ? state.successMessage 
                                : 'تم إرسال سؤالك بنجاح! سنتواصل معك قريباً',
                            style: const TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 13,
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
              margin: EdgeInsets.all(16),
              elevation: 8,
            ),
          );
          _resetForm();
        } else if (state.submissionStatus.isFail()) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Container(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
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
                    SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'حدث خطأ!',
                            style: const TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            state.submissionError ?? 'عذراً، حدث خطأ أثناء إرسال السؤال. يرجى المحاولة مرة أخرى',
                            style: const TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 13,
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
              margin: EdgeInsets.all(16),
              elevation: 8,
              action: SnackBarAction(
                label: 'إعادة المحاولة',
                textColor: Colors.white,
                backgroundColor: Colors.white.withValues(alpha: 0.2),
                onPressed: () {
                  context.read<AdvisoryBloc>().add(SubmitAdvisoryQuestionEvent(
                    question: _questionController.text,
                    senderName: _nameController.text,
                    senderEmail: _emailController.text,
                  ));
                },
              ),
            ),
          );
        }
      },
      child: AppScaffold.clean(
        backgroundColor: Colors.white,
        body: BlocBuilder<AdvisoryBloc, AdvisoryState>(
          builder: (context, state) {
            // Show form for initial and success states, loading only when actually submitting
            if (state.submissionStatus.isLoading()) {
              return Stack(
                children: [
                  _buildForm(context, state),
                  Container(
                    color: Colors.black.withValues(alpha: 0.3),
                    child: Center(
                      child: Container(
                        padding: EdgeInsets.all(20),
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
                            SizedBox(height: 16),
                            Text(
                              'جاري إرسال سؤالك...',
                              style: TextStyle(
                                fontFamily: FontFamily.tajawal,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'يرجى الانتظار قليلاً',
                              style: TextStyle(
                                fontFamily: FontFamily.tajawal,
                                fontSize: 12,
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

  Widget _buildForm(BuildContext context, AdvisoryState state) {
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
            Text(
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
            SizedBox(height: 10),
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
            SizedBox(height: 20),
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
            SizedBox(height: 10),
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
            SizedBox(height: 10),
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
            SizedBox(height: 10),
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
            SizedBox(height: 2),
            Text(
              "الرجاء ادخال بريدك الالكتروني هنا لكي تتم إرسال الاجابة عليه",
              style: TextStyle(
                fontSize: 10,
                fontFamily: FontFamily.tajawal,
                color: Colors.red,
              ),
            ),
            SizedBox(height: 20),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: _questionController,
              maxLines: 6,
                  onChanged: (_) {
                    _validateForm();
                    setState(() {}); // Update character counter
                  },
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'يرجى إدخال السؤال';
                    }
                    if (value.trim().length < 10) {
                      return 'يجب أن يكون السؤال 10 أحرف على الأقل';
                    }
                    return null;
                  },
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.ftawaFiledColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                    hintText: "اكتب سؤالك هنا (10 أحرف على الأقل)",
                hintStyle: TextStyle(
                  fontSize: 12,
                  fontFamily: FontFamily.tajawal,
                  height: 1,
                ),
              ),
            ),
                const SizedBox(height: 5),
            Text(
                  '${_questionController.text.length}/10 أحرف',
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: FontFamily.tajawal,
                    color: _questionController.text.length >= 10 ? Colors.green : Colors.red,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
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
            SizedBox(height: 20),
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
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<AdvisoryBloc>().add(const GenerateAdvisoryCaptchaEvent());
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
                    onPressed: state.isFormValid && state.isCaptchaValid ? _submitForm : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: state.isFormValid && state.isCaptchaValid
                          ? AppColors.primary
                          : Colors.grey,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'إرسال السؤال',
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
