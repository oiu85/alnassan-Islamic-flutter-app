import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/core/navigation/bloc/shared_bloc.dart';
import 'package:nassan_app/core/navigation/bloc/shared_event.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold.custom(

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
            SizedBox(height: 10),
            Text(
              "اتصل بنا",
              style: TextStyle(
                fontSize: 18,
                fontFamily: FontFamily.tajawal,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
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
              keyboardType: TextInputType.emailAddress,

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
            SizedBox(height: 20),

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
            SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.phone,
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
            SizedBox(height: 20),
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
            SizedBox(height: 10),
            TextFormField(
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
            SizedBox(height: 20),

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
            TextField(
              maxLines: 6,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.ftawaFiledColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
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
