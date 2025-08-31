import 'package:flutter/material.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/assets.gen.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

import '../widgets/bottom_cards.dart';
import '../widgets/home_carosell.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              padding: EdgeInsets.symmetric(horizontal: 14),
              icon: Icon(Icons.menu, size: 30),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
         IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined, size: 30),
          ),
        ],

      ),
      drawer: Drawer(
        child: ListView(
            children: <Widget>[
              DrawerHeader(
                  child: Text("Menu")
              )
            ]
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("أهلا بكم", style: TextStyle(fontSize: 25,fontFamily: FontFamily.tajawal, fontWeight: FontWeight.bold),),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("فضيلة الشيخ ", style: TextStyle(fontFamily: FontFamily.tajawal, fontSize: 28 , fontWeight: FontWeight.bold),),
                      Text("أحمد شريف النعسان",style: TextStyle(fontSize: 17, fontFamily: FontFamily.tajawal,),)
                    ],
                  )
                ]
              ),
            ),
            SizedBox(height: 12,),
          Container(
            // padding: EdgeInsets.all(4),
            height: 200,
            decoration: BoxDecoration(
              color: AppColors.secondary,
              gradient: LinearGradient(
                colors: [ AppColors.white,AppColors.secondary,],
                stops: [0.02,0.5],
                begin: Alignment.topLeft,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Stack(
              children: [
                Center(
                  child: Container(
                  color: Colors.red,
                  height: 10,
                  ),
                ),
                //* topRight
                Positioned(
                  top: -16,
                  right: -14,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(180),
                    ),
                    child: Image.asset(
                      Assets.images.circulerZh.path,
                      width: 76,
                      height: 76,
                    ),
                  ),
                ),
                //*TopLeft
                Positioned(
                  top: -16,
                  left: -14,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(180),
                    ),
                    child: Image.asset(
                      Assets.images.circulerZh.path,
                      width: 76,
                      height: 76,
                    ),
                  ),
                ),
                //* ButtomLeft
                Positioned(
                  bottom: -16,
                  left: -14,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(180),
                    ),
                    child: Image.asset(
                      Assets.images.circulerZh.path,
                      width: 76,
                      height: 76,
                    ),
                  ),
                ),
                //*BottomRight
                Positioned(
                  bottom: -16,
                  right: -14,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(180),
                    ),
                    child: Image.asset(
                      Assets.images.circulerZh.path,
                      width: 76,
                      height: 76,
                    ),
                  ),
                ),
              ],
            ),
          ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text("مواضيع هامة:", style: TextStyle(fontFamily: FontFamily.tajawal, fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            HomeCarousel(),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text("المحتوى",style: TextStyle(fontFamily: FontFamily.tajawal, fontSize: 20, fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 20,),
            BottomCards(),
          ],
        )
      ),
    );
  }
}
