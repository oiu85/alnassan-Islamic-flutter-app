import 'package:flutter/material.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';

import '../../../../gen/assets.gen.dart';

class BottomNavBarWidget extends StatelessWidget {
  final bool index;
  BottomNavBarWidget({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: BorderRadius.circular(80),
        boxShadow:[
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            spreadRadius: 5,
            blurRadius: 12,
            offset: Offset(0, 9),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 3),
      margin: EdgeInsets.only(right: 30,left: 30,bottom: 10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(child: Image.asset(Assets.images.home2.path,width: 30,height: 30,color: index? AppColors.primary: Colors.white ),),
        InkWell(child: Image.asset(Assets.images.search.path,width: 30,height: 30,)),
        InkWell(child: Image.asset(Assets.images.messageAdd.path,width: 30,height: 30,)),
        InkWell(child: Image.asset(Assets.images.book.path,width: 30,height: 30,)),
      ],
    ),
    );
  }
}
