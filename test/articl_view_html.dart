// import 'package:flutter/material.dart';
// import 'package:flutter_html/flutter_html.dart';
// import 'package:html/parser.dart';
//
// class HtmlExtractorPage extends StatelessWidget {
//   final String? htmlResponse;
//
//   HtmlExtractorPage({required this.htmlResponse});
//
//   @override
//   Widget build(BuildContext context) {
//     if (htmlResponse == null || htmlResponse!.isEmpty) {
//       return Scaffold(
//         body: Center(
//           child: Text("لا توجد بيانات لعرضها."),
//         ),
//       );
//     }
//
//
//     String formattedHtml = extractTextWithFormatting(htmlResponse!);
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("عرض HTML"),
//       ),
//       body: SingleChildScrollView(
//         child: Html(
//           data: formattedHtml,
//         ),
//       ),
//     );
//   }
//
//   String extractTextWithFormatting(String html) {
//     var document = parse(html);
//
//     return document.outerHtml;
//   }
// }
