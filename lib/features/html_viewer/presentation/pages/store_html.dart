import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/parser.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

class HtmlExtractorPage extends StatefulWidget {
  final String? htmlResponse;

  HtmlExtractorPage({required this.htmlResponse});

  @override
  _HtmlExtractorPageState createState() => _HtmlExtractorPageState();
}

class _HtmlExtractorPageState extends State<HtmlExtractorPage> {
  String extractedText = "";
  @override
  void initState() {
    super.initState();
    extractedText = extractTextWithFormatting(widget.htmlResponse!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HTML View", style: TextStyle(fontFamily: FontFamily.amiri)),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Html(
                data: widget.htmlResponse,
          style: {
            "h1": Style(
              fontSize: FontSize(24),
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
            "p": Style(
              fontSize: FontSize(18),
              color: Colors.red,
              lineHeight: LineHeight(1.5),
            ),
            "span": Style(
              fontSize: FontSize(18),
              color: Colors.black,
              fontFamily: FontFamily.tajawal,
              // fontWeight: FontWeight.w600,
              // letterSpacing: 1.2,
              // wordSpacing: 1.5,
              lineHeight: LineHeight(2),
              //? For Adding Shadow To The Text :
              // textShadow: [
              //   Shadow(
              //       blurRadius: 5.0,
              //       color: Colors.grey.withOpacity(0.6),
              //       offset: Offset(2.0, 2.0)
              //   ),
              // ],
              // backgroundColor: Colors.yellow.withOpacity(0.1),
               // padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
              // borderRadius: BorderRadius.circular(8.0), // حواف دائرية
               textTransform: TextTransform.capitalize,
              textAlign: TextAlign.start,
            ),
          }
              ),
            ),
          ),
        ],
      ),
    );
  }


  String extractTextWithFormatting(String html) {
    var document = parse(html);
    return document.body?.text ?? "";
  }
}
