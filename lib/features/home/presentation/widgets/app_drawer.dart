import 'package:flutter/material.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../../gen/assets.gen.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.close_outlined),
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              buildDrawerItem(
                "السيرة الذاتية",
                Assets.images.drawerImage.path,
                () {
                },
              ),
              SizedBox(height: 25),
              buildDrawerItem(
                "باب التراجم والأحاديث",
                Assets.images.drawerImage.path,
                () {
                },
              ),
              SizedBox(height: 25),
              buildDrawerItem(
                "الأحاديث الموضوعة",
                Assets.images.drawerImage.path,
                () {
                },
              ),
              SizedBox(height: 25),
              buildDrawerItem(
                "مع الحبيب مصطفى",
                Assets.images.drawerImage.path,
                () {
                },
              ),
              SizedBox(height: 25),
              buildDrawerItem("كلمة الشهر", Assets.images.drawerImage.path, () {
              }),
              SizedBox(height: 35),
              Divider(),



              SizedBox(height: 35),
              buildDrawerItem("اتصل بنا", Assets.images.contactUs.path, () {
              }),
              SizedBox(height: 25),
              buildDrawerItem("قناة التلغرام", Assets.images.telegram.path, () {
              }),
              SizedBox(height: 25),
              buildDrawerItem(
                "إعدادات التطبيق",
                Assets.images.settings.path,
                () {
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget buildDrawerItem(String title, String imagePath, VoidCallback onTap) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 30),
    child: InkWell(
      onTap: onTap,
      child: Row(
        children: [
          Image.asset(imagePath, width: 30, height: 30),
          SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(fontFamily: FontFamily.tajawal, fontSize: 18),
          ),
        ],
      ),
    ),
  );
}
