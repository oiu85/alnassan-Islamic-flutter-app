// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';
// import 'package:html/parser.dart';
//
// class WebViewExtractorPage extends StatefulWidget {
//   final String htmlContent;
//
//   WebViewExtractorPage({required this.htmlContent});
//
//   @override
//   _WebViewExtractorPageState createState() => _WebViewExtractorPageState();
// }
//
// class _WebViewExtractorPageState extends State<WebViewExtractorPage> {
//   String extractedText = "";
//
//   late WebViewController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//
//     WebView.platform = SurfaceAndroidWebView();
//   }
//
//
//   String extractTextFromHtml(String html) {
//     var document = parse(html);
//     return document.body?.text ?? "";
//   }
//
//   void extractAndLoadHtml(String html) {
//     String extracted = extractTextFromHtml(html);
//
//     setState(() {
//       extractedText = extracted;
//     });
//
//     _controller.loadUrl(Uri.dataFromString(
//       html,
//       mimeType: 'text/html',
//       encoding: Encoding.getByName('utf-8'),
//     ).toString());
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('WebView & HTML Text Extractor'),
//       ),
//       body: Column(
//         children: [
//           // عرض WebView
//           Expanded(
//             child: WebView(
//               initialUrl: Uri.dataFromString(
//                 widget.htmlContent,
//                 mimeType: 'text/html',
//                 encoding: Encoding.getByName('utf-8'),
//               ).toString(),
//               onWebViewCreated: (WebViewController webViewController) {
//                 _controller = webViewController;
//               },
//               onPageFinished: (String url) {
//                 extractAndLoadHtml(widget.htmlContent);
//               },
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(
//               'النص المستخرج:\n$extractedText',
//               style: TextStyle(fontSize: 16),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
