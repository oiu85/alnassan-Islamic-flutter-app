import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/core/shared/wdigets/app_drawer.dart';
import 'package:nassan_app/features/home/data/model/home_model.dart';
import 'package:nassan_app/features/home/presentation/bloc/home_bloc.dart';
import 'package:nassan_app/features/home/presentation/widgets/bottom_bar.dart';
import 'package:nassan_app/features/advisory_fatwa/presentation/pages/add_advisory.dart';
import 'package:nassan_app/features/notifications/presentation/pages/notifications_page.dart';


class AppScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;
  final Widget? drawer;
  final Widget? floatingActionButton;
  final Widget? bottomNavigationBar;
  final Color? backgroundColor;

  const AppScaffold({
    super.key,
    required this.body,
    this.appBar,
    this.drawer,
    this.floatingActionButton,
    this.bottomNavigationBar,
    this.backgroundColor,
  });


  factory AppScaffold.home({
    Key? key,
    required Widget body,
    Widget? floatingActionButton,
    Widget? bottomNavigationBar,
    Color? backgroundColor,
  }) {
    return AppScaffold(
      key: key,
      body: body,
      appBar: _defaultAppBar(),
      drawer: _defaultDrawer(),
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: _defaultBottomBar(),
      backgroundColor: Colors.white,
    );
  }


  factory AppScaffold.custom({
    Key? key,
    required Widget body,
    PreferredSizeWidget? appBar,
    Widget? drawer,
    Widget? floatingActionButton,
    Widget? bottomNavigationBar,
    Color? backgroundColor,
  }) {
    return AppScaffold(
      key: key,
      body: body,
      appBar: appBar ?? _defaultCustomAppBar(),
      drawer: drawer,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: Colors.white,
    );
  }

  factory AppScaffold.clean({
    Key? key,
    required Widget body,
    Widget? floatingActionButton,
    Widget? bottomNavigationBar,
    Color? backgroundColor,
  }) {
    return AppScaffold(
      key: key,
      body: body,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: Colors.white,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      drawer: drawer,
      body: body,
      floatingActionButton: floatingActionButton,
      bottomNavigationBar: bottomNavigationBar,
      backgroundColor: backgroundColor ?? Colors.white, // Default to white if not specified
    );
  }


  static PreferredSizeWidget _defaultAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      actions: [
        Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NotificationsPage(),
                ),
              );
            },
            icon: Icon(
              Icons.notifications_outlined,
              size: 30.f,
            ),
          ),
        ),
      ],
    );
  }

  static Widget _defaultDrawer() {
    return Builder(
      builder: (context) {
        // Try to get categories from HomeBloc if available
        List<ArticleCategory>? categories;
        try {
          final homeBloc = BlocProvider.of<HomeBloc>(context, listen: false);
          categories = homeBloc.state.homeData?.data?.articleCategories;
        } catch (e) {
          // HomeBloc might not be available, that's okay
        }
        
        return Drawer(
          child: AppDrawer(categories: categories),
          backgroundColor: Colors.white,
        );
      }
    );
  }

  static Widget _defaultBottomBar() {
    return const SizedBox.shrink(); // Hide bottom bar by default
  }

  static PreferredSizeWidget _defaultCustomAppBar() {
    return AppBar(
      scrolledUnderElevation: 0,
      backgroundColor: Colors.white,
      automaticallyImplyLeading: false,
      actions: [
        Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_forward_outlined),
          ),
        ),
      ],
    );
  }
}

class _DefaultBottomNavBar extends StatefulWidget {
  @override
  State<_DefaultBottomNavBar> createState() => _DefaultBottomNavBarState();
}

class _DefaultBottomNavBarState extends State<_DefaultBottomNavBar> {
  int _currentIndex = 0;

  void _onBottomNavTap(int index) {
    setState(() {
      _currentIndex = index;
    });

    // Handle navigation based on index
    switch (index) {
      case 0:
        // Home - already on home page
        break;
      case 1:
        // Search - implement search functionality
        break;
      case 2:
        // Add Advisory - navigate to advisory page
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AddAdvisory(),
          ),
        );
        break;
      case 3:
        // Books - implement books functionality
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavBarWidget(

      currentIndex: _currentIndex,
      onTap: _onBottomNavTap,
    );
  }
}


