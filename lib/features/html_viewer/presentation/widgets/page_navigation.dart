import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../gen/fonts.gen.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../bloc/html_viewer_bloc.dart';
import '../bloc/html_viewer_event.dart';
import '../bloc/html_viewer_state.dart';

/// A widgets for book page navigation controls
class PageNavigation extends StatelessWidget {
  /// Constructor
  const PageNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HtmlViewerBloc, HtmlViewerState>(
      builder: (context, state) {
        if (state.status != HtmlViewerStatus.loaded || state.currentPage == null) {
          return const SizedBox.shrink();
        }

        final int currentPage = state.currentPage!.pageNumber;
        final int totalPages = state.currentPage!.totalPages;
        
        // Safety check to prevent division by zero
        if (totalPages <= 0) {
          return const SizedBox.shrink();
        }
        
        return Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 1),
              child: Text(
                'الصفحة $currentPage من $totalPages',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 16,
                  color: AppColors.textPrimary,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [


                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios),
                    onPressed: currentPage > 1
                        ? () => context.read<HtmlViewerBloc>().add(PreviousPageEvent())
                        : null,
                    color: state.isDarkMode ? AppColors.primary : AppColors.primary,
                    disabledColor: state.isDarkMode ? Colors.grey : Colors.grey.shade300,
                  ),
                  Spacer(),
                  const SizedBox(width: 40),

                  IconButton(
                    icon: const Icon(Icons.arrow_forward_ios),
                    onPressed: currentPage < totalPages
                        ? () => context.read<HtmlViewerBloc>().add(NextPageEvent())
                        : null,
                    color: state.isDarkMode ? AppColors.primary : AppColors.primary,
                    disabledColor: state.isDarkMode ? Colors.grey : Colors.grey.shade300,
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 27, vertical: 1),
              child: Stack(
                children: [
                  Container(
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  FractionallySizedBox(
                    widthFactor: totalPages > 0 ? currentPage / totalPages : 1.0,
                    child: Container(
                      height: 8,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  if (totalPages > 1)
                    Positioned(
                      right: (currentPage - 1) / (totalPages - 1) * (MediaQuery.of(context).size.width - 65),
                      child: Container(
                        width: 20,
                        height: 15,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
