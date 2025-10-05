import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/features/home/presentation/pages/home_page.dart';
import 'package:nassan_app/features/home/presentation/widgets/bottom_bar.dart';
import 'package:nassan_app/features/advisory_fatwa/presentation/pages/add_advisory.dart';
import 'package:nassan_app/features/book_library/presentation/pages/books_page.dart';
import 'package:nassan_app/features/global_search/presentation/pages/global_search.dart';
import 'package:nassan_app/features/global_search/presentation/bloc/global_search_bloc.dart';
import 'bloc/shared_bloc.dart';
import 'bloc/shared_event.dart';
import 'bloc/shared_state.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  // List of pages for bottom navigation
  final List<Widget> _pages = [
    const HomePage(),
    const GlobalSearchPage(), // Global search page
    const AddAdvisory(),
    const BooksPage(),
  ];

  void _onBottomNavTap(int index) {
    // Clear search state when navigating away from search page (index 1)
    if (index != 1) {
      try {
        context.read<GlobalSearchBloc>().clearSearchState();
      } catch (e) {
        // GlobalSearchBloc might not be available if not on search page
        // This is expected and safe to ignore
      }
    }
    
    context.read<SharedBloc>().add(ChangePageEvent(pageIndex: index));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SharedBloc, SharedState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: IndexedStack(
            index: state.currentPageIndex,
            children: _pages,
          ),
          bottomNavigationBar: BottomNavBarWidget(
            currentIndex: state.currentPageIndex,
            onTap: _onBottomNavTap,
          ),
        );
      },
    );
  }
}


