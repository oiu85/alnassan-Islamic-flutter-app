// import 'package:flutter/material.dart';
//
// /// Utility class to ensure consistent Scaffold styling across the app
// class ScaffoldUtils {
//   /// Wraps any Scaffold with consistent styling
//   /// This ensures all Scaffolds have a white background
//   static Widget ensureWhiteBackground(Widget scaffold) {
//     if (scaffold is Scaffold) {
//       return Scaffold(
//         key: scaffold.key,
//         appBar: scaffold.appBar,
//         body: scaffold.body,
//         floatingActionButton: scaffold.floatingActionButton,
//         floatingActionButtonLocation: scaffold.floatingActionButtonLocation,
//         floatingActionButtonAnimator: scaffold.floatingActionButtonAnimator,
//         persistentFooterButtons: scaffold.persistentFooterButtons,
//         drawer: scaffold.drawer,
//         onDrawerChanged: scaffold.onDrawerChanged,
//         endDrawer: scaffold.endDrawer,
//         onEndDrawerChanged: scaffold.onEndDrawerChanged,
//         bottomNavigationBar: scaffold.bottomNavigationBar,
//         bottomSheet: scaffold.bottomSheet,
//         backgroundColor: Colors.white, // Ensure white background
//         resizeToAvoidBottomInset: scaffold.resizeToAvoidBottomInset,
//         primary: scaffold.primary,
//         drawerDragStartBehavior: scaffold.drawerDragStartBehavior,
//         extendBody: scaffold.extendBody,
//         extendBodyBehindAppBar: scaffold.extendBodyBehindAppBar,
//         drawerScrimColor: scaffold.drawerScrimColor,
//         drawerEdgeDragWidth: scaffold.drawerEdgeDragWidth,
//         drawerEnableOpenDragGesture: scaffold.drawerEnableOpenDragGesture,
//         endDrawerEnableOpenDragGesture: scaffold.endDrawerEnableOpenDragGesture,
//         restorationId: scaffold.restorationId,
//       );
//     }
//     return scaffold;
//   }
// //
// //   /// Creates a Scaffold with white background
// //   static Scaffold whiteScaffold({
// //     Key? key,
// //     PreferredSizeWidget? appBar,
// //     Widget? body,
// //     Widget? floatingActionButton,
// //     FloatingActionButtonLocation? floatingActionButtonLocation,
// //     FloatingActionButtonAnimator? floatingActionButtonAnimator,
// //     List<Widget>? persistentFooterButtons,
// //     Widget? drawer,
// //     void Function(bool)? onDrawerChanged,
// //     Widget? endDrawer,
// //     void Function(bool)? onEndDrawerChanged,
// //     Widget? bottomNavigationBar,
// //     Widget? bottomSheet,
// //     bool? resizeToAvoidBottomInset,
// //     bool? primary,
// //     DragStartBehavior? drawerDragStartBehavior,
// //     bool? extendBody,
// //     bool? extendBodyBehindAppBar,
// //     Color? drawerScrimColor,
// //     double? drawerEdgeDragWidth,
// //     bool? drawerEnableOpenDragGesture,
// //     bool? endDrawerEnableOpenDragGesture,
// //     String? restorationId,
// //   }) {
// //     return Scaffold(
// //       key: key,
// //       appBar: appBar,
// //       body: body,
// //       floatingActionButton: floatingActionButton,
// //       floatingActionButtonLocation: floatingActionButtonLocation,
// //       floatingActionButtonAnimator: floatingActionButtonAnimator,
// //       persistentFooterButtons: persistentFooterButtons,
// //       drawer: drawer,
// //       onDrawerChanged: onDrawerChanged,
// //       endDrawer: endDrawer,
// //       onEndDrawerChanged: onEndDrawerChanged,
// //       bottomNavigationBar: bottomNavigationBar,
// //       bottomSheet: bottomSheet,
// //       backgroundColor: Colors.white, // Always white background
// //       resizeToAvoidBottomInset: resizeToAvoidBottomInset,
// //       primary: primary,
// //       drawerDragStartBehavior: drawerDragStartBehavior,
// //       extendBody: extendBody,
// //       extendBodyBehindAppBar: extendBodyBehindAppBar,
// //       drawerScrimColor: drawerScrimColor,
// //       drawerEdgeDragWidth: drawerEdgeDragWidth,
// //       drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
// //       endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
// //       restorationId: restorationId,
// //     );
// //   }
// }