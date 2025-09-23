import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marquee/marquee.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../features/biographies_and_hadiths/presentation/pages/hadith_page.dart';
import '../../../features/biographies_and_hadiths/presentation/bloc/biographies_bloc.dart';
import '../../../features/hadith_almawduea/presentation/pages/almawduea_page.dart';
import '../../../features/hadith_almawduea/presentation/bloc/almawduea_bloc.dart';
import '../../../features/with_habib_almustafa/presentation/pages/habib_mustafa.dart';
import '../../../features/word_of_the_month/presentation/pages/word_of_the_month_page.dart';
import '../../../features/word_of_the_month/presentation/bloc/word_of_the_month_bloc.dart';
import '../../../features/word_of_the_month/data/repository/word_of_the_month_repository_impl.dart';
import '../../../core/network/network_client.dart';
import '../../../gen/assets.gen.dart';
import '../../../features/contact_us/presentation/pages/contact_us.dart';
import '../../../features/contact_us/presentation/bloc/contact_bloc.dart';

import '../../../features/biography/presentation/adapters/drawer_to_biography_adapter.dart';
import '../../../features/biography/presentation/bloc/biography_bloc.dart';
import '../../di/app_dependencies.dart';
import '../../../features/home/data/model/home_model.dart';
import '../../utils/url_launcher_utils.dart';

class AppDrawer extends StatelessWidget {
  final List<ArticleCategory>? categories;
  
  const AppDrawer({super.key, this.categories});

  // Using extension methods for easier access
  // No need for helper methods - use extensions directly: 25.w, 30.h, 16.f

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.h),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.close_outlined,
              size: context.deviceValue(
                mobile: 24.0,
                tablet: 30.0,
                desktop: 36.0,
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            children: [
              // Use API categories if available, otherwise use original static items
              if (categories != null && categories!.isNotEmpty) ...[
                // Filter out unwanted categories and map API categories to original functionality
                ...categories!.where((category) {
                  // Filter out unwanted categories
                  String title = category.catTitle ?? '';
                  return !title.contains('كلمات في مناسبات') && // Filter out "كلمات في مناسبات" (Words for Occasions)
                         !title.contains('خطب و دروس'); // Filter out "خطب و دروس" (Sermons and Lessons)
                }).map((category) {
                  // Map category titles to original functionality
                  String title = category.catTitle ?? '';
                  VoidCallback onTap;
                  
                  if (title.contains('السيرة الذاتية') || title.contains('سيرة')) {
                    onTap = () {
                      final biographyBloc = context.read<BiographyBloc>();
                      DrawerToBiographyAdapter.navigateToBiographyPage(context, biographyBloc);
                    };
                  } else if (title.contains('الموضوعة')) {
                    // Check for الموضوعة (almawduea) first before general hadiths
                    onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlocProvider(
                            create: (context) => getIt<AlmawdueaBloc>(),
                            child: const AlmawdueaPage(),
                          ),
                        ),
                      );
                    };
                  } else if (title.contains('التراجم') || title.contains('الأحاديث')) {
                    onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlocProvider(
                            create: (context) => getIt<BiographiesBloc>(),
                            child: const HadithPage(),
                          ),
                        ),
                      );
                    };
                  } else if (title.contains('الحبيب') || title.contains('مصطفى')) {
                    onTap = () {
                      Navigator.of(context).push(MaterialPageRoute(                          builder: (context) => HabibMustafa(
                            catId: category.catId ?? 13,
                            catMenus: int.tryParse(category.catMenus ?? '40'),
                            articlesPerPage: 3,
                            categoriesPerPage: 3,
                            articlesPage: 1,
                            categoriesPage: 1,
                          )));
                    };
                  } else if (title.contains('كلمة الشهر')) {
                    onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlocProvider(
                            create: (context) => WordOfTheMonthBloc(
                              WordOfTheMonthRepositoryImpl(NetworkClient())
                            ),
                            child: WordOfTheMonthPage(
                              catId: category.catId ?? 1,
                              catMenus: category.catMenus ?? '56',
                              articlesPerPage: 4,
                            ),
                          ),
                        ),
                      );
                    };
                  } else {
                    // Default action for unknown categories
                    onTap = () {};
                  }
                  
                  return Column(
                    children: [
                      buildDrawerItem(
                        context,
                        title,
                        Assets.images.drawerImage.path,
                        onTap,
                      ),
                      SizedBox(height: 25.h),
                    ],
                  );
                }),
              ],
              
              SizedBox(height: 35.h),



              SizedBox(height: 35.h),
              buildDrawerItem(
                context,"اتصل بنا", Assets.images.contactUs.path, () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (context) => getIt<ContactBloc>(),
                        child: const ContactUs(),
                      ),
                    ),
                  );
                }),
              SizedBox(height: 25.h),
              buildDrawerItem(
                context,
                "اسئل سؤالا",
                Assets.images.message.path,
                () async {
                  try {
                    await UrlLauncherUtils.launchWhatsApp(
                      phoneNumber: '9639911929522',
                      message: 'السلام عليكم ورحمة الله وبركاته\nأريد الاستفسار عن:',
                    );
                  } catch (e) {
                    // Show message if WhatsApp URL was copied to clipboard
                    if (context.mounted) {
                      String message = e.toString();
                      if (message.contains('نسخ رابط واتساب')) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(message),
                            backgroundColor: Colors.green,
                            duration: const Duration(seconds: 4),
                          ),
                        );
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('حدث خطأ في فتح واتساب: $e'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                    }
                  }
                },
              ),
              SizedBox(height: 25.h),
              buildDrawerItem(
                context,"قناة التلغرام", Assets.images.telegram.path, () {
              }),
              SizedBox(height: 25.h),
              buildDrawerItem(
                context,
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

Widget buildDrawerItem(BuildContext context, String title, String imagePath, VoidCallback onTap) {
  // Responsive sizes based on device type
  final iconSize = context.deviceValue(  mobile: 30.0,
    tablet: 38.0,
    desktop: 45.0,
  );

  final fontSize = context.deviceValue(
    mobile: 18.0,
    tablet: 22.0,
    desktop: 26.0,
  );

  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 12.h,
      horizontal: 30.w,
    ),
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8.r),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: iconSize.w,
            height: iconSize.h,
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: _buildMarqueeText(
              context,
              title,
              fontSize,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildMarqueeText(BuildContext context, String text, double fontSize) {
  // Calculate available width (approximate)
  final screenWidth = MediaQuery.of(context).size.width;
  final availableWidth = screenWidth - 100.w; // Account for icon and padding
  
  // Create a text painter to measure text width
  final textPainter = TextPainter(
    text: TextSpan(
      text: text,
      style: TextStyle(
        fontFamily: FontFamily.tajawal,
        fontSize: fontSize.f,
      ),
    ),
    textDirection: TextDirection.rtl,
  );
  textPainter.layout();
  
  // If text fits in available space, show normal text
  if (textPainter.width <= availableWidth) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: FontFamily.tajawal,
        fontSize: fontSize.f,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
  
  // If text is too long, use marquee
  return Container(
    height: 30.h, // Fixed height for consistent layout
    child: Marquee(
      text: text,
      style: TextStyle(
        fontFamily: FontFamily.tajawal,
        fontSize: fontSize.f,
      ),
      scrollAxis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.center,
      blankSpace: 20.0,
      velocity: 30.0,
      pauseAfterRound: Duration(seconds: 1),
      startPadding: 10.0,
      accelerationDuration: Duration(seconds: 1),
      accelerationCurve: Curves.linear,
      decelerationDuration: Duration(milliseconds: 500),
      decelerationCurve: Curves.easeOut,
    ),
  );
}
