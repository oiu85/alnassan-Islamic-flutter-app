import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/core/navigation/bloc/shared_bloc.dart';
import 'package:nassan_app/core/navigation/bloc/shared_event.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

class AddAdvisory extends StatelessWidget {
  const AddAdvisory({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold.clean(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
            SizedBox(height: 10),
            Text(
              "إظافة فتوى:",
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
            TextField(
              maxLines: 6,
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
                  "${1314}",
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
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
