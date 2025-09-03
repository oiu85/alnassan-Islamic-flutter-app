// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// import '../../../../gen/assets.gen.dart';
// import '../services/responsive_text_service.dart';
// import '../bloc/html_viewer_bloc.dart';
// import '../bloc/html_viewer_event.dart';
// import '../bloc/html_viewer_state.dart';
// import '../widgets/book_options_toolbar.dart';
// import '../widgets/book_page.dart';
// import '../widgets/page_navigation.dart';
// import '../../domain/models/html_content.dart';
// import '../../domain/repositories/html_viewer_repository_impl.dart';
//
// /// A page that displays HTML content in a book-like viewer
// class HtmlBookViewerPage extends StatelessWidget {
//   /// The HTML content to display
//   final HtmlContent htmlContent;
//
//   /// Constructor
//   const HtmlBookViewerPage({
//     Key? key,
//     required this.htmlContent,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (_) => HtmlViewerBloc(
//         HtmlViewerRepositoryImpl(), // Should be injected in a real app
//       )..add(InitializeHtmlViewerEvent(htmlContent)),
//       child: const _HtmlBookViewerContent(),
//     );
//   }
// }
//
// class _HtmlBookViewerContent extends StatelessWidget {
//   const _HtmlBookViewerContent({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<HtmlViewerBloc, HtmlViewerState>(
//       builder: (context, state) {
//         // Get responsive padding from our service
//         final EdgeInsets padding = ResponsiveTextService.calculatePagePadding(context);
//
//         final bool isDarkMode = state.isDarkMode;
//
//         return Scaffold(
//           appBar: AppBar(
//             // Empty app bar as requested
//           ),
//           body: Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage(Assets.images.viewerBackground.path),
//                 fit: BoxFit.fill,
//               ),
//             ),
//             child: SafeArea(
//               child: Column(
//                 children: [
//                   // Main content
//                   Expanded(
//                     child: Center(
//                       child: AspectRatio(
//                         aspectRatio: ResponsiveTextService.calculateBookAspectRatio(context),
//                         child: const ClipRRect(
//                           child: BookPage(),
//                         ),
//                       ),
//                     ),
//                   ),
//                   // Bottom navigation
//                   const PageNavigation(),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }