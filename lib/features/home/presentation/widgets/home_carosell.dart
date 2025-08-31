import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import '../../../../gen/assets.gen.dart';
class HomeCarousel extends StatefulWidget {
  const HomeCarousel({super.key});

  @override
  _HomeCarouselState createState() => _HomeCarouselState();
}
class _HomeCarouselState extends State<HomeCarousel> {
  final List<String> texts = [
    "تربية الأمة على كلمة التوحيد",
    "الإيمان بالله وحده لا شريك له",
    "الإسلام دين السلام والوحدة"
  ];
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), _changeText);
  }
  void _changeText() {
    setState(() {
      currentIndex = (currentIndex + 1) % texts.length;
    });
    Future.delayed(Duration(seconds: 3), _changeText);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(Assets.svg.carosellResverse.path,),
            Expanded(
              child: Center(
                child: AnimatedOpacity(
                  curve: Curves.fastOutSlowIn,
                  opacity:0.7,
                  duration: Duration(seconds: 2),
                  child: Text(
                    texts[currentIndex],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Tajawal',
                    ),
                  ),
                ),
              ),
            ),
            SvgPicture.asset(Assets.svg.carosell.path),
          ],
        ),
      ),
    );
  }
}
