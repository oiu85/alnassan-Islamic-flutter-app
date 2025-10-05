import 'package:flutter/material.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:lottie/lottie.dart';
import '../../../gen/assets.gen.dart';
import '../../models/page_state/bloc_status.dart';

class SimpleLottieHandler extends StatelessWidget {
  const SimpleLottieHandler({
    super.key,
    required this.blocStatus,
    required this.successWidget,
    this.isEmpty = false,
    this.emptyMessage,
    this.loadingMessage,
    this.onRetry,
    this.animationSize,
  });

  final BlocStatus blocStatus;
  final Widget successWidget;
  final bool isEmpty;
  final String? emptyMessage;
  final String? loadingMessage;
  final VoidCallback? onRetry;
  final double? animationSize;

  @override
  Widget build(BuildContext context) {
    if (blocStatus.isLoading() || blocStatus.isInitial()) {
      return _buildLoadingState(context);
    }
    if (blocStatus.isFail()) {
      return _buildErrorState(context);
    }
    if (blocStatus.isSuccess() && isEmpty) {
      return _buildEmptyState(context);
    }
    if (blocStatus.isSuccess()) {
      return successWidget;
    }
    return successWidget;
  }

  Widget _buildLoadingState(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              Assets.lottie.loading,
              height: animationSize ?? 200.h,
              width: animationSize ?? 200.w,
              fit: BoxFit.contain,
              repeat: true,
            ),
            SizedBox(height: 16.h),
            Text(
              loadingMessage ?? 'جاري التحميل...',
              style: TextStyle(
                fontSize: 16.f,
                fontWeight: FontWeight.w500,
                fontFamily: 'Tajawal',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildErrorState(BuildContext context) {
    String lottieAsset = _getErrorLottieAsset(blocStatus.error);
    bool isNetworkError = _isNetworkError(blocStatus.error);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              lottieAsset,
              height: animationSize ?? 200.h,
              width: animationSize ?? 200.w,
              fit: BoxFit.contain,
              repeat: true,
            ),
            SizedBox(height: 20.h),
            if (isNetworkError) ...[
              Text(
                'خطأ في الاتصال',
                style: TextStyle(
                  fontSize: 18.f,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Tajawal',
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.h),
              Text(
                'تأكد من اتصالك بالإنترنت وحاول مرة أخرى',
                style: TextStyle(
                  fontSize: 14.f,
                  fontFamily: 'Tajawal',
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.h),
              ElevatedButton.icon(
                onPressed: onRetry,
                icon: Icon(Icons.refresh, size: 20.f, color: Colors.white,),
                label: Text(
                  'إعادة المحاولة',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.f,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w600,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.r),
                  ),
                  elevation: 2,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }

  String _getErrorLottieAsset(String? errorMessage) {
    if (errorMessage == null) return Assets.lottie.notFound;

    // Check error message to determine which Lottie to show
    if (errorMessage.toLowerCase().contains('network') ||
        errorMessage.toLowerCase().contains('internet') ||
        errorMessage.toLowerCase().contains('connection') ||
        errorMessage.toLowerCase().contains('timeout')) {
      return Assets.lottie.noInternet;
    }
    if (errorMessage.toLowerCase().contains('not found') ||
        errorMessage.toLowerCase().contains('404') ||
        errorMessage.toLowerCase().contains('notfound')) {
      return Assets.lottie.notFound;
    }
    return Assets.lottie.notFound;
  }

  bool _isNetworkError(String? errorMessage) {
    if (errorMessage == null) return false;

    final lowerError = errorMessage.toLowerCase();
    return lowerError.contains('network') ||
        lowerError.contains('internet') ||
        lowerError.contains('connection') ||
        lowerError.contains('timeout') ||
        lowerError.contains('no internet') ||
        lowerError.contains('connection timeout') ||
        lowerError.contains('receive timeout') ||
        lowerError.contains('send timeout');
  }

  Widget _buildEmptyState(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              Assets.lottie.noData,
              height: animationSize ?? 200.h,
              width: animationSize ?? 200.w,
              fit: BoxFit.contain,
              repeat: true,
            ),
          ],
        ),
      ),
    );
  }
}