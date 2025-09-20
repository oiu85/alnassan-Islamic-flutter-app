import 'package:flutter/material.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/core/shared/wdigets/app_drawer.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

class AddAdvisory extends StatelessWidget {
  const AddAdvisory({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold.custom(
      drawer: AppDrawer(),
      body: ListView(
        children: [
          Container(
            child: Text(
              "الأخ الكريم الزائر، الأخت الكريمة الزائرة، السلام عليكم ورحمة الله وبركاته وأهلاً وسهلاً ومرحباً بكم في هذا التطبيق، ونرجو الله عز وجل أن يجعل فيه النفع لما فيه صلاح ديننا ودنيانا وآخرتنا، ونرجو منكم أن تخصونا بدعوة صالحة.أما بعد :فيرجى التكرم بالقيام بعملية البحث عن جواب أسئلتكمفربما أن يكون موجوداً،وإن وجدتم صعوبة في البحث فأهلاً وسهلاً بكم. ونرجو الله أن يسددنا في أقوالنا وأفعالنا.",
              style: TextStyle(
                fontSize: 18,
                fontFamily: FontFamily.tajawal,
                height: 1,
                wordSpacing: 1.5,
                letterSpacing: 1.2,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "اخوكم أحمد شريف النعسان",
            style: TextStyle(
              fontSize: 18,
              fontFamily: FontFamily.tajawal,
              height: 1,
              wordSpacing: 1.5,
              letterSpacing: 1.2,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),

          TextFormField(
            maxLines: 10,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text('اسم المستخدم'),
              hintText: 'ادخل اسمك هنا',
              hintStyle: TextStyle(
                fontSize: 18,
                fontFamily: FontFamily.tajawal,
                height: 1,
                wordSpacing: 1.5,
                letterSpacing: 1.2,
              ),
            ),
          ),
          SizedBox(height: 10),
          TextFormField(
            maxLines: 10,
            decoration: InputDecoration(
              label: Text("البريد الالكتروني"),
              border: OutlineInputBorder(),
              hintText: "uiuxcreative2021@gmail.com",
              hintStyle: TextStyle(
                fontSize: 18,
                fontFamily: FontFamily.tajawal,
                height: 1,
                wordSpacing: 1.5,
                letterSpacing: 1.2,
              ),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              label: Text("اكتب سؤالك هنا"),
              hintText: "اكتب سؤالك هنا",
              hintStyle: TextStyle(
                fontSize: 18,
                fontFamily: FontFamily.tajawal,
                height: 1,
                wordSpacing: 1.5,
                letterSpacing: 1.2,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
