import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

import '../../../../core/shared/wdigets/app_drawer.dart';
import '../../../../core/shared/wdigets/filter_button.dart';
import '../../../../gen/assets.gen.dart';

class AlmawdueaPage extends StatelessWidget {
  const AlmawdueaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: AppDrawer()),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.viewerBackground.path),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              pinned: false,
              floating: true,
              actions: [
                IconButton(
                  icon: const Icon(Icons.arrow_forward_outlined),
                  onPressed: () {
                    Navigator.of(context).maybePop();
                  },
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 30),
                child: Row(
                  children: [
                    Text(
                      "الأحاديث الموضوعة",
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 8),
                    FilterButton(options: [],),
                  ],
                ),
              ),
            ),

            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 15 ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.secondary,
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "يا محمد إنا نسئلك عن كلمات أعطاهن الله ...؟",
                              style: TextStyle(fontWeight: FontWeight.bold, fontFamily: FontFamily.tajawal ,fontSize: 12),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "السؤال: ",
                              style: TextStyle(
                                color: AppColors.primary,
                                fontWeight: FontWeight.bold,
                                fontFamily: FontFamily.tajawal
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "ما صحة الحديث :(بَيْنَمَا النَّبِيُّ صَلَّى \n اللهُ عَلَيْهِ وَعَلَى آلِهِ وَصَحْبِهِ وَسَلَّمَ جَالِسٌ مَعَ \n الْمُهَاجِرِينَ وَالْأَنْصَارِ إِذْ أَقْبَلَ\n  إِلَيْهِ جَمَاعَةٌ مِنَ الْيَهُودِ\n  فَقَالُوا: يَا مُحَمَّدُ إِنَّا نَسْأَلُكَ عَنْ كَلِمَاتٍ... ",
                              
                              style: TextStyle(
                                fontSize: 14 ,
                                fontFamily: FontFamily.tajawal
                              ),
                            ),
                          ],
                        ),
                        Row(children: [
                          Text("المزيد", style: TextStyle(fontWeight: FontWeight.bold , fontFamily: FontFamily.tajawal),)
                        ],),
                         Divider(
                           color: AppColors.primary,
                           thickness: 2,
                         ),
                         Row(
                           children: [
                             Spacer(),

                             IconButton(onPressed: (){}, icon:Icon(Icons.calendar_month_outlined,) ),
                             Text("${07}-${05}-${2025}", style: TextStyle(fontSize: 12),),
                             IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined)),
                             Text("${149}",style: TextStyle(fontFamily: FontFamily.tajawal),),
                           ],
                         ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: 4),
                          padding: EdgeInsets.symmetric(horizontal:2, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            color: AppColors.primary,
                          ),
                          child: Center(
                            child: Text(
                              "عرض التفاصيل",
                              style: TextStyle(
                                fontFamily: FontFamily.tajawal,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 15 ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.secondary,
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "يا محمد إنا نسئلك عن كلمات أعطاهن الله ...؟",
                              style: TextStyle(fontWeight: FontWeight.bold, fontFamily: FontFamily.tajawal ,fontSize: 12),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "السؤال: ",
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: FontFamily.tajawal
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "ما صحة الحديث :(بَيْنَمَا النَّبِيُّ صَلَّى \n اللهُ عَلَيْهِ وَعَلَى آلِهِ وَصَحْبِهِ وَسَلَّمَ جَالِسٌ مَعَ \n الْمُهَاجِرِينَ وَالْأَنْصَارِ إِذْ أَقْبَلَ\n  إِلَيْهِ جَمَاعَةٌ مِنَ الْيَهُودِ\n  فَقَالُوا: يَا مُحَمَّدُ إِنَّا نَسْأَلُكَ عَنْ كَلِمَاتٍ... ",

                              style: TextStyle(
                                  fontSize: 14 ,
                                  fontFamily: FontFamily.tajawal
                              ),
                            ),
                          ],
                        ),
                        Row(children: [
                          Text("المزيد", style: TextStyle(fontWeight: FontWeight.bold , fontFamily: FontFamily.tajawal),)
                        ],),
                        Divider(
                          color: AppColors.primary,
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            Spacer(),

                            IconButton(onPressed: (){}, icon:Icon(Icons.calendar_month_outlined,) ),
                            Text("${07}-${05}-${2025}", style: TextStyle(fontSize: 12),),
                            IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined)),
                            Text("${149}",style: TextStyle(fontFamily: FontFamily.tajawal),),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: 4),
                          padding: EdgeInsets.symmetric(horizontal:2, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            color: AppColors.primary,
                          ),
                          child: Center(
                            child: Text(
                              "عرض التفاصيل",
                              style: TextStyle(
                                fontFamily: FontFamily.tajawal,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    padding: EdgeInsets.symmetric(horizontal: 16 , vertical: 15 ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.secondary,
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "يا محمد إنا نسئلك عن كلمات أعطاهن الله ...؟",
                              style: TextStyle(fontWeight: FontWeight.bold, fontFamily: FontFamily.tajawal ,fontSize: 12),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "السؤال: ",
                              style: TextStyle(
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: FontFamily.tajawal
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "ما صحة الحديث :(بَيْنَمَا النَّبِيُّ صَلَّى \n اللهُ عَلَيْهِ وَعَلَى آلِهِ وَصَحْبِهِ وَسَلَّمَ جَالِسٌ مَعَ \n الْمُهَاجِرِينَ وَالْأَنْصَارِ إِذْ أَقْبَلَ\n  إِلَيْهِ جَمَاعَةٌ مِنَ الْيَهُودِ\n  فَقَالُوا: يَا مُحَمَّدُ إِنَّا نَسْأَلُكَ عَنْ كَلِمَاتٍ... ",

                              style: TextStyle(
                                  fontSize: 14 ,
                                  fontFamily: FontFamily.tajawal
                              ),
                            ),
                          ],
                        ),
                        Row(children: [
                          Text("المزيد", style: TextStyle(fontWeight: FontWeight.bold , fontFamily: FontFamily.tajawal),)
                        ],),
                        Divider(
                          color: AppColors.primary,
                          thickness: 2,
                        ),
                        Row(
                          children: [
                            Spacer(),

                            IconButton(onPressed: (){}, icon:Icon(Icons.calendar_month_outlined,) ),
                            Text("${07}-${05}-${2025}", style: TextStyle(fontSize: 12),),
                            IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined)),
                            Text("${149}",style: TextStyle(fontFamily: FontFamily.tajawal),),
                          ],
                        ),
                        Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(bottom: 4),
                          padding: EdgeInsets.symmetric(horizontal:2, vertical: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(80),
                            color: AppColors.primary,
                          ),
                          child: Center(
                            child: Text(
                              "عرض التفاصيل",
                              style: TextStyle(
                                fontFamily: FontFamily.tajawal,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
