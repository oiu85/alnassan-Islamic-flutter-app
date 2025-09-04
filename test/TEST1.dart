import 'package:flutter/material.dart';

class Test1 extends StatelessWidget {
  const Test1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 1042,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Colors.white),
      child: Stack(
        children: [
          Positioned(
            left: -2,
            top: 193.13,
            child: Opacity(
              opacity: 0.15,
              child: Container(
                transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-1.57),
                width: 242.13,
                height: 391.31,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage("https://placehold.co/242x391"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 737,
            child: Container(
              width: 342,
              height: 253,
              child: Stack(
                children: [
                  Positioned(
                    left: -764,
                    top: 0,
                    child: Container(
                      width: 342,
                      height: 253,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3FEECA86),
                            blurRadius: 8,
                            offset: Offset(0, 3),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 14,
                            top: 16,
                            child: Container(
                              width: 314,
                              height: 24,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 8,
                                children: [
                                  SizedBox(
                                    width: 315,
                                    height: 24,
                                    child: Text(
                                      'أحكام الطلاق',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: const Color(0x7F262626),
                                        fontSize: 12,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Container(width: 16, height: 16, child: Stack()),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 60,
                            child: Container(
                              width: 314,
                              height: 65,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 12,
                                    child: SizedBox(
                                      width: 314,
                                      height: 38,
                                      child: Text(
                                        'إِذَا طُلِّقَتِ الزَّوْجَةُ مِنْ زَوْجِهَا فَهَلْ يُعْتَبَرُ هَذَا مِنَ القَضَاءِ المُبْرَمِ؟',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: const Color(0xFF262626),
                                          fontSize: 12,
                                          fontFamily: 'Tajawal',
                                          fontWeight: FontWeight.w700,
                                          height: 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 50,
                            child: SizedBox(
                              width: 314,
                              height: 14,
                              child: Text(
                                'السؤال:',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: const Color(0xFFE9BE6E),
                                  fontSize: 12,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w700,
                                  height: 1.42,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 154,
                            child: Container(
                              width: 314,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 24,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      spacing: 8,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            spacing: 7,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                spacing: 3,
                                                children: [
                                                  SizedBox(
                                                    width: 19,
                                                    height: 12,
                                                    child: Text(
                                                      '149',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                        color: const Color(0xFF262626),
                                                        fontSize: 12,
                                                        fontFamily: 'Tajawal',
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.42,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(width: 16, height: 16, child: Stack()),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                spacing: 4,
                                                children: [
                                                  SizedBox(
                                                    width: 57,
                                                    height: 12,
                                                    child: Text(
                                                      '2025-05-07',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                        color: const Color(0xFF262626),
                                                        fontSize: 12,
                                                        fontFamily: 'Tajawal',
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.42,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 72,
                                          height: 14,
                                          child: Text(
                                            'رقم الفتوى:',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: const Color(0xFF262626),
                                              fontSize: 14,
                                              fontFamily: 'Tajawal',
                                              fontWeight: FontWeight.w700,
                                              height: 1.21,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 35,
                                          height: 17,
                                          child: Text(
                                            '13617',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: const Color(0xFF262626),
                                              fontSize: 14,
                                              fontFamily: 'Tajawal',
                                              fontWeight: FontWeight.w400,
                                              height: 1.21,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFE9BE6E),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      spacing: 10,
                                      children: [
                                        Container(width: 24, height: 24, child: Stack()),
                                        Text(
                                          'الإجابة',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'Tajawal',
                                            fontWeight: FontWeight.w700,
                                            height: 1.71,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 342,
                      height: 253,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3FEECA86),
                            blurRadius: 8,
                            offset: Offset(0, 3),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 14,
                            top: 16,
                            child: Container(
                              width: 314,
                              height: 24,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 8,
                                children: [
                                  SizedBox(
                                    width: 315,
                                    height: 24,
                                    child: Text(
                                      'مسائل متفرقة في الصلاة',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: const Color(0x7F262626),
                                        fontSize: 12,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Container(width: 16, height: 16, child: Stack()),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 60,
                            child: Container(
                              width: 314,
                              height: 65,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 12,
                                    child: SizedBox(
                                      width: 314,
                                      height: 38,
                                      child: Text(
                                        'مَا هِيَ شُرُوطُ صِحَّةِ الجَمْعِ بَيْنَ الصَّلَوَاتِ، سَوَاءٌ كَانَتْ جَمْعَ تَقْدِيمٍ أَو جَمْعَ تَأْخِيرٍ؟',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: const Color(0xFF262626),
                                          fontSize: 12,
                                          fontFamily: 'Tajawal',
                                          fontWeight: FontWeight.w700,
                                          height: 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 50,
                            child: SizedBox(
                              width: 314,
                              height: 14,
                              child: Text(
                                'السؤال:',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: const Color(0xFFE9BE6E),
                                  fontSize: 12,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w700,
                                  height: 1.42,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 154,
                            child: Container(
                              width: 314,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 24,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      spacing: 8,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            spacing: 7,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                spacing: 3,
                                                children: [
                                                  SizedBox(
                                                    width: 19,
                                                    height: 12,
                                                    child: Text(
                                                      '149',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                        color: const Color(0xFF262626),
                                                        fontSize: 12,
                                                        fontFamily: 'Tajawal',
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.42,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(width: 16, height: 16, child: Stack()),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                spacing: 4,
                                                children: [
                                                  SizedBox(
                                                    width: 57,
                                                    height: 12,
                                                    child: Text(
                                                      '2025-05-07',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                        color: const Color(0xFF262626),
                                                        fontSize: 12,
                                                        fontFamily: 'Tajawal',
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.42,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 72,
                                          height: 14,
                                          child: Text(
                                            'رقم الفتوى:',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: const Color(0xFF262626),
                                              fontSize: 14,
                                              fontFamily: 'Tajawal',
                                              fontWeight: FontWeight.w700,
                                              height: 1.21,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 35,
                                          height: 17,
                                          child: Text(
                                            '13617',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: const Color(0xFF262626),
                                              fontSize: 14,
                                              fontFamily: 'Tajawal',
                                              fontWeight: FontWeight.w400,
                                              height: 1.21,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFE9BE6E),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      spacing: 10,
                                      children: [
                                        Container(width: 24, height: 24, child: Stack()),
                                        Text(
                                          'الإجابة',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'Tajawal',
                                            fontWeight: FontWeight.w700,
                                            height: 1.71,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: -382,
                    top: 0,
                    child: Container(
                      width: 342,
                      height: 253,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3FEECA86),
                            blurRadius: 8,
                            offset: Offset(0, 3),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 14,
                            top: 16,
                            child: Container(
                              width: 314,
                              height: 24,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 8,
                                children: [
                                  SizedBox(
                                    width: 315,
                                    height: 24,
                                    child: Text(
                                      'مسائل فقهية متنوعة ',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: const Color(0x7F262626),
                                        fontSize: 12,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Container(width: 16, height: 16, child: Stack()),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 60,
                            child: Container(
                              width: 314,
                              height: 65,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 12,
                                    child: SizedBox(
                                      width: 314,
                                      height: 38,
                                      child: Text(
                                        'مَاذَا يَعْنِي كَلَامُ ابْنِ عَطَاءِ اللهِ السَّكَنْدَرِيِّ رَحِمَهُ اللهُ تَعَالَى: إِذَا أَرَدْتَ أَنْ تَعْرِفَ مَقَامَكَ، فَانْظُرْ فِي أَيِّ شَيْءٍ أَقَامَكَ؟',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: const Color(0xFF262626),
                                          fontSize: 12,
                                          fontFamily: 'Tajawal',
                                          fontWeight: FontWeight.w700,
                                          height: 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 50,
                            child: SizedBox(
                              width: 314,
                              height: 14,
                              child: Text(
                                'السؤال:',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: const Color(0xFFE9BE6E),
                                  fontSize: 12,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w700,
                                  height: 1.42,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 154,
                            child: Container(
                              width: 314,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 24,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      spacing: 8,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            spacing: 7,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                spacing: 3,
                                                children: [
                                                  SizedBox(
                                                    width: 19,
                                                    height: 12,
                                                    child: Text(
                                                      '149',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                        color: const Color(0xFF262626),
                                                        fontSize: 12,
                                                        fontFamily: 'Tajawal',
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.42,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(width: 16, height: 16, child: Stack()),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                spacing: 4,
                                                children: [
                                                  SizedBox(
                                                    width: 57,
                                                    height: 12,
                                                    child: Text(
                                                      '2025-05-07',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                        color: const Color(0xFF262626),
                                                        fontSize: 12,
                                                        fontFamily: 'Tajawal',
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.42,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 72,
                                          height: 14,
                                          child: Text(
                                            'رقم الفتوى:',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: const Color(0xFF262626),
                                              fontSize: 14,
                                              fontFamily: 'Tajawal',
                                              fontWeight: FontWeight.w700,
                                              height: 1.21,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 35,
                                          height: 17,
                                          child: Text(
                                            '13617',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: const Color(0xFF262626),
                                              fontSize: 14,
                                              fontFamily: 'Tajawal',
                                              fontWeight: FontWeight.w400,
                                              height: 1.21,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFE9BE6E),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      spacing: 10,
                                      children: [
                                        Container(width: 24, height: 24, child: Stack()),
                                        Text(
                                          'الإجابة',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'Tajawal',
                                            fontWeight: FontWeight.w700,
                                            height: 1.71,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 689,
            child: Container(
              width: 342,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 139,
                children: [
                  SizedBox(
                    width: 26,
                    height: 24,
                    child: Text(
                      'الكل',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: const Color(0xFF262626),
                        fontSize: 12,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 178,
                    height: 24,
                    child: Text(
                      'آخر الفتاوى إضافة',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: const Color(0xFF262626),
                        fontSize: 20,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 13,
            top: 412,
            child: Container(
              width: 353,
              height: 253,
              child: Stack(
                children: [
                  Positioned(
                    left: -753,
                    top: 0,
                    child: Container(
                      width: 342,
                      height: 253,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3FEECA86),
                            blurRadius: 8,
                            offset: Offset(0, 3),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 14,
                            top: 16,
                            child: Container(
                              width: 314,
                              height: 24,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 8,
                                children: [
                                  SizedBox(
                                    width: 315,
                                    height: 24,
                                    child: Text(
                                      'أحكام الطلاق',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: const Color(0x7F262626),
                                        fontSize: 12,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Container(width: 16, height: 16, child: Stack()),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 60,
                            child: Container(
                              width: 314,
                              height: 65,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 12,
                                    child: SizedBox(
                                      width: 314,
                                      height: 38,
                                      child: Text(
                                        'إِذَا طُلِّقَتِ الزَّوْجَةُ مِنْ زَوْجِهَا فَهَلْ يُعْتَبَرُ هَذَا مِنَ القَضَاءِ المُبْرَمِ؟',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: const Color(0xFF262626),
                                          fontSize: 12,
                                          fontFamily: 'Tajawal',
                                          fontWeight: FontWeight.w700,
                                          height: 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 50,
                            child: SizedBox(
                              width: 314,
                              height: 14,
                              child: Text(
                                'السؤال:',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: const Color(0xFFE9BE6E),
                                  fontSize: 12,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w700,
                                  height: 1.42,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 154,
                            child: Container(
                              width: 314,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 24,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      spacing: 8,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            spacing: 7,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                spacing: 3,
                                                children: [
                                                  SizedBox(
                                                    width: 19,
                                                    height: 12,
                                                    child: Text(
                                                      '149',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                        color: const Color(0xFF262626),
                                                        fontSize: 12,
                                                        fontFamily: 'Tajawal',
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.42,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(width: 16, height: 16, child: Stack()),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                spacing: 4,
                                                children: [
                                                  SizedBox(
                                                    width: 57,
                                                    height: 12,
                                                    child: Text(
                                                      '2025-05-07',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                        color: const Color(0xFF262626),
                                                        fontSize: 12,
                                                        fontFamily: 'Tajawal',
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.42,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 72,
                                          height: 14,
                                          child: Text(
                                            'رقم الفتوى:',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: const Color(0xFF262626),
                                              fontSize: 14,
                                              fontFamily: 'Tajawal',
                                              fontWeight: FontWeight.w700,
                                              height: 1.21,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 35,
                                          height: 17,
                                          child: Text(
                                            '13617',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: const Color(0xFF262626),
                                              fontSize: 14,
                                              fontFamily: 'Tajawal',
                                              fontWeight: FontWeight.w400,
                                              height: 1.21,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFE9BE6E),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      spacing: 10,
                                      children: [
                                        Container(width: 24, height: 24, child: Stack()),
                                        Text(
                                          'الإجابة',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'Tajawal',
                                            fontWeight: FontWeight.w700,
                                            height: 1.71,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 11,
                    top: 0,
                    child: Container(
                      width: 342,
                      height: 253,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3FEECA86),
                            blurRadius: 8,
                            offset: Offset(0, 3),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 14,
                            top: 16,
                            child: Container(
                              width: 314,
                              height: 24,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 8,
                                children: [
                                  SizedBox(
                                    width: 315,
                                    height: 24,
                                    child: Text(
                                      'مسائل متفرقة في الصلاة',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: const Color(0x7F262626),
                                        fontSize: 12,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Container(width: 16, height: 16, child: Stack()),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 60,
                            child: Container(
                              width: 314,
                              height: 65,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 12,
                                    child: SizedBox(
                                      width: 314,
                                      height: 38,
                                      child: Text(
                                        'مَا هِيَ شُرُوطُ صِحَّةِ الجَمْعِ بَيْنَ الصَّلَوَاتِ، سَوَاءٌ كَانَتْ جَمْعَ تَقْدِيمٍ أَو جَمْعَ تَأْخِيرٍ؟',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: const Color(0xFF262626),
                                          fontSize: 12,
                                          fontFamily: 'Tajawal',
                                          fontWeight: FontWeight.w700,
                                          height: 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 50,
                            child: SizedBox(
                              width: 314,
                              height: 14,
                              child: Text(
                                'السؤال:',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: const Color(0xFFE9BE6E),
                                  fontSize: 12,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w700,
                                  height: 1.42,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 154,
                            child: Container(
                              width: 314,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 24,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      spacing: 8,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            spacing: 7,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                spacing: 3,
                                                children: [
                                                  SizedBox(
                                                    width: 19,
                                                    height: 12,
                                                    child: Text(
                                                      '149',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                        color: const Color(0xFF262626),
                                                        fontSize: 12,
                                                        fontFamily: 'Tajawal',
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.42,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(width: 16, height: 16, child: Stack()),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                spacing: 4,
                                                children: [
                                                  SizedBox(
                                                    width: 57,
                                                    height: 12,
                                                    child: Text(
                                                      '2025-05-07',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                        color: const Color(0xFF262626),
                                                        fontSize: 12,
                                                        fontFamily: 'Tajawal',
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.42,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 72,
                                          height: 14,
                                          child: Text(
                                            'رقم الفتوى:',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: const Color(0xFF262626),
                                              fontSize: 14,
                                              fontFamily: 'Tajawal',
                                              fontWeight: FontWeight.w700,
                                              height: 1.21,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 35,
                                          height: 17,
                                          child: Text(
                                            '13617',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: const Color(0xFF262626),
                                              fontSize: 14,
                                              fontFamily: 'Tajawal',
                                              fontWeight: FontWeight.w400,
                                              height: 1.21,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFE9BE6E),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      spacing: 10,
                                      children: [
                                        Container(width: 24, height: 24, child: Stack()),
                                        Text(
                                          'الإجابة',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'Tajawal',
                                            fontWeight: FontWeight.w700,
                                            height: 1.71,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: -371,
                    top: 0,
                    child: Container(
                      width: 342,
                      height: 253,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3FEECA86),
                            blurRadius: 8,
                            offset: Offset(0, 3),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 14,
                            top: 16,
                            child: Container(
                              width: 314,
                              height: 24,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                spacing: 8,
                                children: [
                                  SizedBox(
                                    width: 315,
                                    height: 24,
                                    child: Text(
                                      'مسائل فقهية متنوعة ',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: const Color(0x7F262626),
                                        fontSize: 12,
                                        fontFamily: 'Tajawal',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ),
                                  Container(width: 16, height: 16, child: Stack()),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 60,
                            child: Container(
                              width: 314,
                              height: 65,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 12,
                                    child: SizedBox(
                                      width: 314,
                                      height: 38,
                                      child: Text(
                                        'مَاذَا يَعْنِي كَلَامُ ابْنِ عَطَاءِ اللهِ السَّكَنْدَرِيِّ رَحِمَهُ اللهُ تَعَالَى: إِذَا أَرَدْتَ أَنْ تَعْرِفَ مَقَامَكَ، فَانْظُرْ فِي أَيِّ شَيْءٍ أَقَامَكَ؟',
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          color: const Color(0xFF262626),
                                          fontSize: 12,
                                          fontFamily: 'Tajawal',
                                          fontWeight: FontWeight.w700,
                                          height: 2,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 50,
                            child: SizedBox(
                              width: 314,
                              height: 14,
                              child: Text(
                                'السؤال:',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  color: const Color(0xFFE9BE6E),
                                  fontSize: 12,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w700,
                                  height: 1.42,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 14,
                            top: 154,
                            child: Container(
                              width: 314,
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                spacing: 24,
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      spacing: 8,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            spacing: 7,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                spacing: 3,
                                                children: [
                                                  SizedBox(
                                                    width: 19,
                                                    height: 12,
                                                    child: Text(
                                                      '149',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                        color: const Color(0xFF262626),
                                                        fontSize: 12,
                                                        fontFamily: 'Tajawal',
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.42,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(width: 16, height: 16, child: Stack()),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                spacing: 4,
                                                children: [
                                                  SizedBox(
                                                    width: 57,
                                                    height: 12,
                                                    child: Text(
                                                      '2025-05-07',
                                                      textAlign: TextAlign.right,
                                                      style: TextStyle(
                                                        color: const Color(0xFF262626),
                                                        fontSize: 12,
                                                        fontFamily: 'Tajawal',
                                                        fontWeight: FontWeight.w400,
                                                        height: 1.42,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 72,
                                          height: 14,
                                          child: Text(
                                            'رقم الفتوى:',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: const Color(0xFF262626),
                                              fontSize: 14,
                                              fontFamily: 'Tajawal',
                                              fontWeight: FontWeight.w700,
                                              height: 1.21,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 35,
                                          height: 17,
                                          child: Text(
                                            '13617',
                                            textAlign: TextAlign.right,
                                            style: TextStyle(
                                              color: const Color(0xFF262626),
                                              fontSize: 14,
                                              fontFamily: 'Tajawal',
                                              fontWeight: FontWeight.w400,
                                              height: 1.21,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFFE9BE6E),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      spacing: 10,
                                      children: [
                                        Container(width: 24, height: 24, child: Stack()),
                                        Text(
                                          'الإجابة',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontFamily: 'Tajawal',
                                            fontWeight: FontWeight.w700,
                                            height: 1.71,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 364,
            child: Container(
              width: 342,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 139,
                children: [
                  SizedBox(
                    width: 27,
                    height: 24,
                    child: Text(
                      'الكل',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: const Color(0xFF262626),
                        fontSize: 12,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 178,
                    height: 24,
                    child: Text(
                      'الفتاوى الأكثر اطلاعاً',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: const Color(0xFF262626),
                        fontSize: 20,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 25,
            top: 209,
            child: Container(
              width: 341,
              height: 115,
              child: Stack(
                children: [
                  Positioned(
                    left: 201,
                    top: 0,
                    child: Container(
                      width: 140,
                      height: 115,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0x4CE9BE6E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x4CBFBFBF),
                            blurRadius: 5,
                            offset: Offset(0, 3),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 13,
                            top: 47,
                            child: SizedBox(
                              width: 109,
                              height: 24,
                              child: Text(
                                'كتاب القرآن الكريم وعلومه',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF262626),
                                  fontSize: 12,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w500,
                                  height: 1.67,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 46,
                    top: 0,
                    child: Container(
                      width: 139,
                      height: 115,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0x4CE9BE6E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x4CBFBFBF),
                            blurRadius: 5,
                            offset: Offset(0, 3),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 13,
                            top: 47,
                            child: SizedBox(
                              width: 109,
                              height: 24,
                              child: Text(
                                'كتاب الحديث الشريف وعلومه',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF262626),
                                  fontSize: 12,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w500,
                                  height: 1.67,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: -109,
                    top: 0,
                    child: Container(
                      width: 139,
                      height: 115,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0x4CE9BE6E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x4CBFBFBF),
                            blurRadius: 5,
                            offset: Offset(0, 3),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 13,
                            top: 47,
                            child: SizedBox(
                              width: 109,
                              height: 24,
                              child: Text(
                                'كتاب الطهارة',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF262626),
                                  fontSize: 12,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w500,
                                  height: 1.67,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: -264,
                    top: 0,
                    child: Container(
                      width: 139,
                      height: 115,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0x4CE3B260),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x4CBFBFBF),
                            blurRadius: 5,
                            offset: Offset(0, 3),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 13,
                            top: 47,
                            child: SizedBox(
                              width: 109,
                              height: 24,
                              child: Text(
                                'كتاب الصلاة',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF262626),
                                  fontSize: 12,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w500,
                                  height: 1.67,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: -419,
                    top: 0,
                    child: Container(
                      width: 139,
                      height: 115,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0x4CE3B260),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x4CBFBFBF),
                            blurRadius: 5,
                            offset: Offset(0, 3),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 13,
                            top: 47,
                            child: SizedBox(
                              width: 109,
                              height: 24,
                              child: Text(
                                'كتاب الجنائز ',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF262626),
                                  fontSize: 12,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w500,
                                  height: 1.67,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: -574,
                    top: 0,
                    child: Container(
                      width: 139,
                      height: 115,
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: const Color(0x4CE3B260),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x4CBFBFBF),
                            blurRadius: 5,
                            offset: Offset(0, 3),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 13,
                            top: 47,
                            child: SizedBox(
                              width: 109,
                              height: 24,
                              child: Text(
                                'كتاب الصيام',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xFF262626),
                                  fontSize: 12,
                                  fontFamily: 'Tajawal',
                                  fontWeight: FontWeight.w500,
                                  height: 1.67,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 161,
            child: Container(
              width: 342,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 139,
                children: [
                  SizedBox(
                    width: 27,
                    height: 24,
                    child: Text(
                      'الكل',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: const Color(0xFF262626),
                        fontSize: 12,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 178,
                    height: 24,
                    child: Text(
                      'الفهرس الموضوعي:',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: const Color(0xFF262626),
                        fontSize: 20,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 124,
            top: 12,
            child: Container(
              width: 121,
              height: 34,
              decoration: ShapeDecoration(
                color: const Color(0xFF060606),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
              ),
            ),
          ),
          Positioned(
            left: 24,
            top: 79,
            child: Container(
              width: 342,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 16,
                children: [
                  Container(width: 24, height: 24, child: Stack()),
                  Container(
                    width: 263,
                    height: 42,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 1,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: const Color(0x66E9BE6E),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x14000000),
                          blurRadius: 16,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          left: 82,
                          top: 16,
                          child: SizedBox(
                            width: 130,
                            height: 14,
                            child: Text(
                              'ابحث عن الفتوى التي تريد',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: const Color(0xCCA3A4AD),
                                fontSize: 12,
                                fontFamily: 'Tajawal',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 224,
                          top: 9,
                          child: Container(width: 24, height: 24, child: Stack()),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(3.14),
                    width: 24,
                    height: 24,
                    child: Stack(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
