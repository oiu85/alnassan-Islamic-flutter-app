import 'package:flutter/material.dart';
import 'package:nassan_app/core/responsive/responsive_builder.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../../../../core/responsive/responsive_scaling.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../core/shared/wdigets/app_drawer.dart';
import '../../../../gen/fonts.gen.dart';

class HabibMustafa extends StatelessWidget {
  const HabibMustafa({super.key});

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
            key: PageStorageKey("lessons_list"),
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "(مع الحبيب مصطفى )",
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
                    SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        cardBuild(
                          // lesson title :
                          lesson: "مع الحبيب مصطفى ومااجملها منك ياسيدي يارسول الله",
                          viewCont: "343",
                          title: "فضيلة الشيخ",
                          imagePath: Assets.images.mohhamed.path,
                          imageNamePath: Assets.images.nassanName.path,
                          width: 161,
                          height: 236,
                          imageWidth: 50,
                          imageHeight:50,
                          context: context,
                        ),
                          cardBuild(
                            // lesson title :
                            lesson: "مع الحبيب مصطفى ومااجملها منك ياسيدي يارسول الله",
                            viewCont: "343",
                            title: "فضيلة الشيخ",
                            imagePath: Assets.images.mohhamed.path,
                            imageNamePath: Assets.images.nassanName.path,
                            width: 161,
                            height: 236,
                            imageWidth: 50,
                            imageHeight:50,
                            context: context,
                          ),
                      ],
                    ),

                  ],
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget cardBuild({
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
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      imagePath,
                      fit: BoxFit.cover,
                      width: imageWidth,
                      height: imageHeight,
                    ),
                  ),
                ),
                Positioned(
                  left: -10,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      Assets.images.candleBig.path,
                      fit: BoxFit.contain,
                      width: imageWidth,
                      height: imageHeight+30,
                    ),
                  ),
                ),
                Positioned(
                  left: -4,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      Assets.images.candleSmall.path,
                      fit: BoxFit.contain,
                      width: imageWidth+10,
                      height: imageHeight+10,
                    ),
                  ),
                ),





                Positioned(
                  right: -10,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      Assets.images.candleBig.path,
                      fit: BoxFit.contain,
                      width: imageWidth,
                      height: imageHeight+30,
                    ),
                  ),
                ),
                Positioned(
                  right: -4,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      Assets.images.candleSmall.path,
                      fit: BoxFit.contain,
                      width: imageWidth+10,
                      height: imageHeight+10,
                    ),
                  ),
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
