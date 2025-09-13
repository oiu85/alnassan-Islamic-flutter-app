import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import '../../../../gen/assets.gen.dart';

class HomeCarousel extends StatefulWidget {
  const HomeCarousel({super.key});

  @override
  _HomeCarouselState createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  Timer? _timer;
  final List<String> texts = [
    "تربية الأمة على كلمة التوحيد",
    "الإيمان بالله وحده لا شريك له",
    "الإسلام دين السلام والوحدة",
  ];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer(Duration(seconds: 3), _changeText);
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _changeText() {
    if (!mounted) return;
    try {
      setState(() {
        currentIndex = (currentIndex + 1) % texts.length;
      });
      _timer = Timer(Duration(seconds: 3), _changeText);
    } catch (e) {
      // Log the error, but prevent crash
      print('Error in HomeCarousel: $e');
      _timer = Timer(Duration(seconds: 3), _changeText);
    }
  }

  // Helper methods for responsive sizing
  double _fontSize(double size) => ScreenUtil().setSp(size);
  double _width(double size) => ScreenUtil().setWidth(size);
  double _height(double size) => ScreenUtil().setHeight(size);
  double _radius(double size) => ScreenUtil().radius(size);
  
  @override
  Widget build(BuildContext context) {
    // Responsive sizing for SVG icons based on device type
    final double svgSize = context.deviceValue(
      mobile: 56.0,
      tablet: 60.0,
      desktop: 70.0,
    );
    
    return Padding(
      padding: EdgeInsets.all(_width(10)),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(_radius(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              Assets.svg.carosellResverse.path,
              width: _width(svgSize),
              height: _height(svgSize),
            ),
            Expanded(
              child: Center(
                child: AnimatedOpacity(
                  curve: Curves.fastOutSlowIn,
                  opacity: 0.7,
                  duration: Duration(seconds: 2),
                  child: Text(
                    texts[currentIndex],
                    style: TextStyle(
                      fontSize: _fontSize(context.deviceValue(
                        mobile: 20.0,
                        tablet: 26.0,
                        desktop: 30.0,
                      )),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal',
                    ),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
              ),
            ),
            SvgPicture.asset(
              Assets.svg.carosell.path,
              width: _width(svgSize),
              height: _height(svgSize),
            ),
          ],
        ),
      ),
    );
  }
}

