import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/core/responsive/responsive_builder.dart';
import 'package:nassan_app/core/responsive/responsive_scaling.dart';

import '../../../../gen/assets.gen.dart';
import '../../../home/presentation/widgets/app_drawer.dart';

class LessonsPage extends StatelessWidget {
  const LessonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, responsive) => Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_forward_outlined),
          ),
        ],
      ),
      drawer: Drawer(child: AppDrawer()),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.viewerBackground.path),
          ),
        ),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              child: Column(
                children: [


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "(لقد كان في قصصهم عبرة )",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: FontFamily.tajawal,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                      Text(
                        "الكل ",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: FontFamily.tajawal,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _cardBuild(
                      context: context,
                      title: 'فضيلة الشيخ ',
                      imageNamePath: Assets.images.nassanName.path,
                      width: DeviceTypeUtil.getValue(
                        context: context,
                        mobile: 175.0,
                        tablet: 200.0,
                        desktop: 250.0,
                      ),
                      height: DeviceTypeUtil.getValue(
                        context: context,
                        mobile: 250.0,
                        tablet: 300.0,
                        desktop: 350.0,
                      ),
                      imagePath: Assets.images.backgroundZh.path,
                      imageWidth: DeviceTypeUtil.getValue(
                        context: context,
                        mobile: 170.0,
                        tablet: 190.0,
                        desktop: 240.0,
                      ),
                      imageHeight: DeviceTypeUtil.getValue(
                        context: context,
                        mobile: 180.0,
                        tablet: 220.0,
                        desktop: 270.0,
                      ),
                      lesson: 'مع الحبيب مصطفى ومااجملها منك ياسيدي محمد ',
                      viewCont: '768',
                    ),

                    _cardBuild(
                      context: context,
                      title: 'فضيلة الشيخ ',
                      imageNamePath: Assets.images.nassanName.path,
                      width: DeviceTypeUtil.getValue(
                        context: context,
                        mobile: 175.0,
                        tablet: 200.0,
                        desktop: 250.0,
                      ),
                      height: DeviceTypeUtil.getValue(
                        context: context,
                        mobile: 250.0,
                        tablet: 300.0,
                        desktop: 350.0,
                      ),
                      imagePath: Assets.images.backgroundZh.path,
                      imageWidth: DeviceTypeUtil.getValue(
                        context: context,
                        mobile: 170.0,
                        tablet: 190.0,
                        desktop: 240.0,
                      ),
                      imageHeight: DeviceTypeUtil.getValue(
                        context: context,
                        mobile: 180.0,
                        tablet: 220.0,
                        desktop: 270.0,
                      ),
                      lesson: 'مع الحبيب مصطفى ومااجملها منك ياسيدي',
                      viewCont: '768',
                    ),

                  ],
                ),

                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "(نحو أسرة مسلمة )",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: FontFamily.tajawal,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                      Text(
                        "الكل ",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: FontFamily.tajawal,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _cardBuild(
                        context: context,
                        title: 'فضيلة الشيخ ',
                        imageNamePath: Assets.images.nassanName.path,
                        width: DeviceTypeUtil.getValue(
                          context: context,
                          mobile: 175.0,
                          tablet: 200.0,
                          desktop: 250.0,
                        ),
                        height: DeviceTypeUtil.getValue(
                          context: context,
                          mobile: 250.0,
                          tablet: 300.0,
                          desktop: 350.0,
                        ),
                        imagePath: Assets.images.backgroundZh.path,
                        imageWidth: DeviceTypeUtil.getValue(
                          context: context,
                          mobile: 170.0,
                          tablet: 190.0,
                          desktop: 240.0,
                        ),
                        imageHeight: DeviceTypeUtil.getValue(
                          context: context,
                          mobile: 180.0,
                          tablet: 220.0,
                          desktop: 270.0,
                        ),
                        lesson: 'مع الحبيب مصطفى ومااجملها منك ياسيدي محمد ',
                        viewCont: '768',
                      ),

                      _cardBuild(
                        context: context,
                        title: 'فضيلة الشيخ ',
                        imageNamePath: Assets.images.nassanName.path,
                        width: DeviceTypeUtil.getValue(
                          context: context,
                          mobile: 175.0,
                          tablet: 200.0,
                          desktop: 250.0,
                        ),
                        height: DeviceTypeUtil.getValue(
                          context: context,
                          mobile: 250.0,
                          tablet: 300.0,
                          desktop: 350.0,
                        ),
                        imagePath: Assets.images.backgroundZh.path,
                        imageWidth: DeviceTypeUtil.getValue(
                          context: context,
                          mobile: 170.0,
                          tablet: 190.0,
                          desktop: 240.0,
                        ),
                        imageHeight: DeviceTypeUtil.getValue(
                          context: context,
                          mobile: 180.0,
                          tablet: 220.0,
                          desktop: 270.0,
                        ),
                        lesson: 'مع الحبيب مصطفى ومااجملها منك ياسيدي',
                        viewCont: '768',
                      ),

                    ],
                  ),


                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "(بر الوالدين )",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: FontFamily.tajawal,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                      Text(
                        "الكل ",
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: FontFamily.tajawal,
                          fontWeight: FontWeight.bold,
                          color: AppColors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _cardBuild(
                        context: context,
                        title: 'فضيلة الشيخ ',
                        imageNamePath: Assets.images.nassanName.path,
                        width: DeviceTypeUtil.getValue(
                          context: context,
                          mobile: 175.0,
                          tablet: 200.0,
                          desktop: 250.0,
                        ),
                        height: DeviceTypeUtil.getValue(
                          context: context,
                          mobile: 250.0,
                          tablet: 300.0,
                          desktop: 350.0,
                        ),
                        imagePath: Assets.images.backgroundZh.path,
                        imageWidth: DeviceTypeUtil.getValue(
                          context: context,
                          mobile: 170.0,
                          tablet: 190.0,
                          desktop: 240.0,
                        ),
                        imageHeight: DeviceTypeUtil.getValue(
                          context: context,
                          mobile: 180.0,
                          tablet: 220.0,
                          desktop: 270.0,
                        ),
                        lesson: 'مع الحبيب مصطفى ومااجملها منك ياسيدي محمد ',
                        viewCont: '768',
                      ),

                      _cardBuild(
                        context: context,
                        title: 'فضيلة الشيخ ',
                        imageNamePath: Assets.images.nassanName.path,
                        width: DeviceTypeUtil.getValue(
                          context: context,
                          mobile: 175.0,
                          tablet: 200.0,
                          desktop: 250.0,
                        ),
                        height: DeviceTypeUtil.getValue(
                          context: context,
                          mobile: 250.0,
                          tablet: 300.0,
                          desktop: 350.0,
                        ),
                        imagePath: Assets.images.backgroundZh.path,
                        imageWidth: DeviceTypeUtil.getValue(
                          context: context,
                          mobile: 170.0,
                          tablet: 190.0,
                          desktop: 240.0,
                        ),
                        imageHeight: DeviceTypeUtil.getValue(
                          context: context,
                          mobile: 180.0,
                          tablet: 220.0,
                          desktop: 270.0,
                        ),
                        lesson: 'مع الحبيب مصطفى ومااجملها منك ياسيدي',
                        viewCont: '768',
                      ),

                    ],
                  ),


                ],
              ),
            ),
        ]
          ),
        ),
      ),
    );

    }
}

Widget _cardBuild({
  required BuildContext context,
  required String lesson,
  required String viewCont,
  required String title,
  required String imagePath,
  required String imageNamePath,
  required double width,
  required double height,
  required double imageWidth,
  required double imageHeight,
}) {
  return Container(
    height: 236,
    width: width,
    child: Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: width,
                  height: height,
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(imageNamePath),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "الدرس:",
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: FontFamily.tajawal,
                    color: AppColors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      viewCont,
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: FontFamily.tajawal,
                        color: AppColors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye_outlined),
                      iconSize: 24,
                      color: AppColors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "$lesson",
              style: TextStyle(
                fontSize: ResponsiveScaling.scale(context, 12),
                fontFamily: FontFamily.tajawal,
                color: AppColors.grey,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 4),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
              color: AppColors.secondary,
            ),
            child: Text(
              "عرض التفاصيل",
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

// child: Stack(
// children: [
// Padding(
// padding: const EdgeInsets.only(top: 20),
// child: Image.asset(Assets.images.backgroundZh.path, fit: BoxFit.fill,),
// ),
// Center(child: Text("فضيلة الشيخ", style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold , fontFamily: FontFamily.tajawal),)),
// Align(
// alignment: Alignment.bottomCenter,
// child: Image.asset(Assets.images.nassanName.path)),
// ],
// ),
