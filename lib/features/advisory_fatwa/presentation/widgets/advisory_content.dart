import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../bloc/advisory_viewer_bloc.dart';
import '../bloc/advisory_viewer_state.dart';
import '../../data/model/advisory_detail.dart';

class AdvisoryContent extends StatelessWidget {
  const AdvisoryContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdvisoryViewerBloc, AdvisoryViewerState>(
      builder: (context, state) {
        final advisory = state.advisory;
        if (advisory == null) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        return SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(context, advisory, state),
              SizedBox(height: 16.h),
              _buildQuestionSection(context, advisory, state),
              SizedBox(height: 24.h),
              _buildAnswerSection(context, advisory, state),
              SizedBox(height: 16.h),
              _buildFooter(context, advisory, state),
            ],
          ),
        );
      },
    );
  }

  Widget _buildHeader(BuildContext context, AdvisoryDetail advisory, AdvisoryViewerState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Category
        if (advisory.category != null)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
            decoration: BoxDecoration(
              color: state.isNightMode ? Colors.grey[800] : Colors.grey[200],
              borderRadius: BorderRadius.circular(8.r),
            ),
            child: Text(
              advisory.category!.catTitle ?? 'قسم الفتاوى',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 14.f,
                fontWeight: FontWeight.w600,
                color: state.isNightMode ? Colors.white70 : Colors.black87,
              ),
            ),
          ),
        SizedBox(height: 12.h),
        // Title
        Text(
          advisory.advisoryTitle ?? 'فتوى',
          style: TextStyle(
            fontFamily: FontFamily.tajawal,
            fontSize: state.textSize + 4,
            fontWeight: FontWeight.bold,
            color: state.isNightMode ? Colors.white : Colors.black,
          ),
        ),
        SizedBox(height: 8.h),
        // Stats row
        Row(
          children: [
            Icon(
              Icons.calendar_month_outlined,
              size: 16.f,
              color: state.isNightMode ? Colors.white60 : Colors.grey[600],
            ),
            SizedBox(width: 4.w),
            Text(
              _formatDate(advisory.advisoryQuestionDate),
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 12.f,
                color: state.isNightMode ? Colors.white60 : Colors.grey[600],
              ),
            ),
            SizedBox(width: 16.w),
            Icon(
              Icons.remove_red_eye_outlined,
              size: 16.f,
              color: state.isNightMode ? Colors.white60 : Colors.grey[600],
            ),
            SizedBox(width: 4.w),
            Text(
              advisory.advisoryVisitor?.toString() ?? '0',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 12.f,
                color: state.isNightMode ? Colors.white60 : Colors.grey[600],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildQuestionSection(BuildContext context, AdvisoryDetail advisory, AdvisoryViewerState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Question label
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
          decoration: BoxDecoration(
            color: state.isNightMode ? Colors.blueGrey[700] : Colors.blue[50],
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Text(
            'السؤال',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: state.textSize - 2,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
        ),
        SizedBox(height: 12.h),
        // Question content
        Container(
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: state.isNightMode ? Colors.grey[850] : Colors.grey[50],
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: state.isNightMode ? Colors.grey[700]! : Colors.grey[300]!,
              width: 1,
            ),
          ),
          child: Text(
            advisory.advisoryQuestion ?? 'لا يوجد سؤال',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: state.textSize,
              height: 1.5,
              color: state.isNightMode ? Colors.white : Colors.black87,
            ),
            textAlign: TextAlign.justify,
            textDirection: TextDirection.rtl,
          ),
        ),
      ],
    );
  }

  Widget _buildAnswerSection(BuildContext context, AdvisoryDetail advisory, AdvisoryViewerState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Answer label
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
          decoration: BoxDecoration(
            color: state.isNightMode ? Colors.green[900] : Colors.green[50],
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Text(
            'الإجابة',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: state.textSize - 2,
              fontWeight: FontWeight.bold,
              color:AppColors.primary,
            ),
          ),
        ),
        SizedBox(height: 12.h),
        // Answer content
        Container(
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: state.isNightMode ? Colors.grey[850] : Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            border: Border.all(
              color: state.isNightMode ? Colors.grey[700]! : Colors.grey[300]!,
              width: 1,
            ),
          ),
          child: Html(
            data: advisory.advisoryAnswer ?? '<p>لا توجد إجابة</p>',
            style: {
              "body": Style(
                fontFamily: FontFamily.tajawal,
                fontSize: FontSize(state.textSize),
                color: state.isNightMode ? Colors.white : Colors.black87,
                textAlign: TextAlign.justify,
                direction: TextDirection.rtl,
              ),
              "p": Style(
                fontFamily: FontFamily.tajawal,
                fontSize: FontSize(state.textSize),
                color: state.isNightMode ? Colors.white : Colors.black87,
                textAlign: TextAlign.justify,
                direction: TextDirection.rtl,
                margin:  Margins.only(bottom: 12),
              ),
              "strong": Style(
                fontWeight: FontWeight.bold,
                color: state.isNightMode ? Colors.white : Colors.black,
              ),
              "span": Style(
                fontFamily: FontFamily.tajawal,
              ),
            },
          ),
        ),
      ],
    );
  }

  Widget _buildFooter(BuildContext context, AdvisoryDetail advisory, AdvisoryViewerState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          color: state.isNightMode ? Colors.grey[700] : Colors.grey[300],
          thickness: 1,
        ),
        SizedBox(height: 8.h),
        if (advisory.advisorySenderName != null && advisory.advisorySenderName!.isNotEmpty)
          Padding(
            padding: EdgeInsets.only(bottom: 8.h),
            child: Row(
              children: [
                Text(
                  'السائل: ',
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 14.f,
                    fontWeight: FontWeight.bold,
                    color: state.isNightMode ? Colors.white70 : Colors.grey[700],
                  ),
                ),
                Text(
                  advisory.advisorySenderName!,
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 14.f,
                    color: state.isNightMode ? Colors.white70 : Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
        if (advisory.advisoryAnswerDate != null)
          Row(
            children: [
              Text(
                'تاريخ الإجابة: ',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 14.f,
                  fontWeight: FontWeight.bold,
                  color: state.isNightMode ? Colors.white70 : Colors.grey[700],
                ),
              ),
              Text(
                _formatDate(advisory.advisoryAnswerDate),
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 14.f,
                  color: state.isNightMode ? Colors.white70 : Colors.grey[700],
                ),
              ),
            ],
          ),
        SizedBox(height: 32.h),
      ],
    );
  }

  String _formatDate(String? dateString) {
    if (dateString == null || dateString.isEmpty) {
      return 'غير محدد';
    }
    
    try {
      final date = DateTime.parse(dateString);
      return '${date.year}/${date.month}/${date.day}';
    } catch (e) {
      return dateString;
    }
  }
}
