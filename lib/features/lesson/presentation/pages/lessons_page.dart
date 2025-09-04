import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

import '../../../../gen/assets.gen.dart';
import '../../../home/presentation/widgets/app_drawer.dart';

class LessonsPage extends StatelessWidget {
  const LessonsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("لقد كان في قصههم عبرة "), Text("الكل ")],
                  ),
                ),
                SizedBox(height: 4),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 175,
                        height: 200,
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    Assets.images.backgroundZh.path,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),



                      Container(
                        width: 175,
                        height: 200,
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    Assets.images.backgroundZh.path,
                                    fit: BoxFit.cover,
                                  ),
                                  Center(
                                    child: Text(
                                      "فضيلة الشيخ",
                                      style: TextStyle(
                                        fontFamily: FontFamily.tajawal,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    Assets.images.nassanName.path,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 175,
                        height: 200,
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    Assets.images.backgroundZh.path,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),



                      Container(
                        width: 175,
                        height: 200,
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    Assets.images.backgroundZh.path,
                                    fit: BoxFit.cover,
                                  ),
                                  Center(
                                    child: Text(
                                      "فضيلة الشيخ",
                                      style: TextStyle(
                                        fontFamily: FontFamily.tajawal,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    Assets.images.nassanName.path,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 175,
                        height: 200,
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    Assets.images.backgroundZh.path,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),



                      Container(
                        width: 175,
                        height: 200,
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    Assets.images.backgroundZh.path,
                                    fit: BoxFit.cover,
                                  ),
                                  Center(
                                    child: Text(
                                      "فضيلة الشيخ",
                                      style: TextStyle(
                                        fontFamily: FontFamily.tajawal,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Image.asset(
                                    Assets.images.nassanName.path,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      // body: ,
    );
  }
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
