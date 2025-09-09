import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import 'package:voice_note_kit/player/audio_player_widget.dart';
import 'package:voice_note_kit/player/player_enums/player_enums.dart';

import '../../../../core/responsive/responsive_scaling.dart';
import '../../../../core/shared/wdigets/app_drawer.dart';
import '../../../../core/shared/wdigets/filter_button.dart';
import '../../../../gen/assets.gen.dart';

class SoundsPage extends StatelessWidget {
  const SoundsPage({super.key});

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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "المكتبة الصوتية",
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "الكل",
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  cardBuild(
                    context: context,
                    width: 200,
                    soundDate: "07-3-2025",
                    title: "أهوال موقف الحشر وكرباته\n الشديدة المديدة",
                    viewCont: "343",
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

Widget cardBuild({
  required BuildContext context,
  required String viewCont,
  required String title,
  required double width,
  required String soundDate,
}) {
  return Container(
    height: 300,
    width: 260,
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: EdgeInsets.all(7),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  Assets.images.headphone2.path,
                  width: 30,
                  height: 30,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove_red_eye_outlined, size: 18),
                ),
                Text(viewCont),
                Spacer(),
                Icon(Icons.calendar_today_outlined, size: 18),
                SizedBox(width: 1),
                Text(soundDate),
              ],
            ),
            AudioPlayerWidget(
              audioPath: 'https://commondatastorage.googleapis.com/codeskulptor-demos/riceracer_assets/fx/engine-10.ogg',
              audioType:AudioType.url,
              playerStyle: PlayerStyle.style1,
              backgroundColor: AppColors.primary,
              progressBarColor: AppColors.secondary,
                width: 250,
            ),
          ],
        ),
      ),
    ),
  );
}
