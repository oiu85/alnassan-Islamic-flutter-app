import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/features/home/presentation/pages/home_page.dart';
import 'package:nassan_app/features/home/presentation/widgets/bottom_bar.dart';
import 'package:nassan_app/features/advisory_fatwa/presentation/pages/add_advisory.dart';
import 'package:nassan_app/features/book_library/presentation/pages/books_page.dart';
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
    const SearchPage(), // Placeholder for search
    const AddAdvisory(),
    const BooksPage(), // Placeholder for books
  ];

  void _onBottomNavTap(int index) {
    context.read<SharedBloc>().add(ChangePageEvent(pageIndex: index));
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SharedBloc, SharedState>(
      builder: (context, state) {
        return Scaffold(
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

// Placeholder pages for search and books
class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('البحث'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const Center(
        child: Text(
          'صفحة البحث',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

