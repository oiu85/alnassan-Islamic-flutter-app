import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import '../bloc/advisory_viewer_bloc.dart';
import '../bloc/advisory_viewer_event.dart';
import '../bloc/advisory_viewer_state.dart';

class AdvisoryViewerToolbar extends StatelessWidget {
  const AdvisoryViewerToolbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdvisoryViewerBloc, AdvisoryViewerState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.of(context).pop(),
              ),
              Row(
                children: [
                  _buildTextSizeButton(context, state, false),
                  SizedBox(width: 16.w),
                  _buildTextSizeButton(context, state, true),
                  SizedBox(width: 16.w),
                  _buildNightModeButton(context, state),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTextSizeButton(BuildContext context, AdvisoryViewerState state, bool increase) {
    return InkWell(
      onTap: () {
        final newSize = increase ? state.textSize + 2.0 : state.textSize - 2.0;
        // Limit text size between 14 and 30
        if (newSize >= 14.0 && newSize <= 30.0) {
          context.read<AdvisoryViewerBloc>().add(ChangeTextSizeEvent(newSize));
        }
      },
      child: Container(
        padding: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          children: [
            Icon(
              increase ? Icons.text_increase : Icons.text_decrease,
              size: 20.w,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNightModeButton(BuildContext context, AdvisoryViewerState state) {
    return InkWell(
      onTap: () {
        context.read<AdvisoryViewerBloc>().add(ToggleNightModeEvent(!state.isNightMode));
      },
      child: Container(
        padding: EdgeInsets.all(8.w),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: Row(
          children: [
            Icon(
              state.isNightMode ? Icons.light_mode : Icons.dark_mode,
              size: 20.w,
            ),
          ],
        ),
      ),
    );
  }
}
