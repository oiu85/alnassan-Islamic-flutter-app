import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
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

  // Using extension methods for easier access
  // No need for helper methods - use extensions directly: 25.w, 30.h, 16.f
  
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
        padding: EdgeInsets.all(10.w),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                Assets.svg.carosellResverse.path,
                width: svgSize.w,
                height: svgSize.h,
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "تربية الأمة على كلمة التوحيد",
                    style: TextStyle(
                      fontSize: context.deviceValue(
                        mobile: 12.f,
                        tablet: 26.f,
                        desktop: 30.f,
                      ),
                      fontWeight: FontWeight.bold,
                      fontFamily: FontFamily.tajawal,
                    ),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    softWrap: true,
                  ),
                ),
              ),
              SvgPicture.asset(
                Assets.svg.carosell.path,
                width: svgSize.w,
                height: svgSize.h,
              ),
            ],
          ),
        ),
      );
    }
    
    final currentTopic = _topics[currentIndex];
    
    return Padding(
      padding: EdgeInsets.all(10.w),
      child: GestureDetector(
        onTap: () => _navigateToHtmlViewer(currentTopic),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                Assets.svg.carosellResverse.path,
                width: svgSize.w,
                height: svgSize.h,
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
                        fontSize: context.deviceValue(
                          mobile: 14.f,
                          tablet: 26.f,
                          desktop: 30.f,
                        ),
                        fontWeight: FontWeight.bold,
                        fontFamily: FontFamily.tajawal,
                      ),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      softWrap: true,
                    ),
                  ),
                ),
              ),
              SvgPicture.asset(
                Assets.svg.carosell.path,
                width: svgSize.w,
                height: svgSize.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

