import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../data/model/home_model.dart';
import '../../../html_viewer/domain/models/html_content.dart';
import '../../../html_viewer/presentation/pages/html_book_viewer_page.dart';

class HomeCarousel extends StatefulWidget {
  final List<ImportantTopic>? importantTopics;
  
  const HomeCarousel({
    super.key,
    this.importantTopics,
  });

  @override
  _HomeCarouselState createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  Timer? _timer;
  int currentIndex = 0;

  List<ImportantTopic> get _topics {
    return widget.importantTopics ?? [];
  }

  @override
  void initState() {
    super.initState();
    if (_topics.isNotEmpty) {
      _timer = Timer(Duration(seconds: 3), _changeText);
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _changeText() {
    if (!mounted || _topics.isEmpty) return;
    try {
      setState(() {
        currentIndex = (currentIndex + 1) % _topics.length;
      });
      _timer = Timer(Duration(seconds: 3), _changeText);
    } catch (e) {
      // Log the error, but prevent crash
      print('Error in HomeCarousel: $e');
      _timer = Timer(Duration(seconds: 3), _changeText);
    }
  }

  void _navigateToHtmlViewer(ImportantTopic topic) {
    final HtmlContent htmlContent = HtmlContent(
      title: topic.title ?? 'عنوان غير متوفر',
      htmlContent: topic.content ?? topic.summary ?? '',
      summary: topic.summary,
      description: topic.content,
      articleId: topic.id,
      categoryId: topic.category?.id?.toString(),
      imageUrl: topic.image,
      date: topic.date,
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HtmlBookViewerPage(
          htmlContent: htmlContent,
        ),
      ),
    );
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
    
    // If no topics available, show default text
    if (_topics.isEmpty) {
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
                  child: Text(
                    "تربية الأمة على كلمة التوحيد",
                    style: TextStyle(
                      fontSize: _fontSize(context.deviceValue(
                        mobile: 12,
                        tablet: 26.0,
                        desktop: 30.0,
                      )),
                      fontWeight: FontWeight.bold,
                      fontFamily: FontFamily.tajawal,
                    ),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
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
    
    final currentTopic = _topics[currentIndex];
    
    return Padding(
      padding: EdgeInsets.all(_width(10)),
      child: GestureDetector(
        onTap: () => _navigateToHtmlViewer(currentTopic),
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
                      currentTopic.title ?? 'عنوان غير متوفر',
                      style: TextStyle(
                        fontSize: _fontSize(context.deviceValue(
                          mobile: 14,
                          tablet: 26.0,
                          desktop: 30.0,
                        )),
                        fontWeight: FontWeight.bold,
                        fontFamily: FontFamily.tajawal,
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
      ),
    );
  }
}

