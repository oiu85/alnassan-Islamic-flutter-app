import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../gen/fonts.gen.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../bloc/html_viewer_bloc.dart';
import '../bloc/html_viewer_event.dart';
import '../bloc/html_viewer_state.dart';

class BookOptionsToolbar extends StatelessWidget {
  const BookOptionsToolbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HtmlViewerBloc, HtmlViewerState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // _buildToolbarButton(
              //   context: context,
              //   icon: Icons.arrow_back,
              //   label: '',
              //   onPressed: () {
              //     Navigator.of(context).pop();
              //   },
              //   state: state,
              // ),
              IconButton(
                onPressed: (){
                  Navigator.of(context).pop();
                },
                icon:   Icon(Icons.arrow_back_outlined,color: state.isDarkMode ? AppColors.primary : AppColors.primary, size: 24,
              ),
              ),
              Spacer(),
              _buildToolbarButton(
                context: context,
                icon: Icons.zoom_out_outlined,
                label: 'تصغير',
                onPressed: () {
                  final newSize = state.textSize - 2.0;
                  if (newSize >= 12.0) {
                    context.read<HtmlViewerBloc>()
                      .add(ChangeTextSizeEvent(newSize));
                  }
                },
                state: state,
              ),

              _buildToolbarButton(
                context: context,
                icon: Icons.zoom_in_outlined,
                label: 'تكبير',
                onPressed: () {
                  final newSize = state.textSize + 2.0;
                  if (newSize <= 24.0) {
                    context.read<HtmlViewerBloc>()
                      .add(ChangeTextSizeEvent(newSize));
                  }
                },
                state: state,
              ),
              // Share
              _buildToolbarButton(
                context: context,
                icon: Icons.share,
                label: 'مشاركة',
                onPressed: () {
                  if (state.extractedText == null) {
                    context.read<HtmlViewerBloc>().add(ExtractTextEvent());
                  }
                  final String title = state.htmlContent?.title ?? 'مشاركة المحتوى';
                  final String text = state.extractedText ?? 'لا يوجد محتوى للمشاركة';
                  Share.share(
                    text,
                    subject: title,
                  );
                },
                state: state,
              ),
            ],
          ),
        );
      },
    );
  }















  Widget _buildToolbarButton({
    required BuildContext context,
    required IconData icon,
    required String label,
    required VoidCallback onPressed,
    required HtmlViewerState state,
  }) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              color: state.isDarkMode ? AppColors.primary : AppColors.primary,
              size: 24,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 12,
                color: state.isDarkMode ? Colors.white : AppColors.textPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
