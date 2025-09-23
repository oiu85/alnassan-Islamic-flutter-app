import 'package:flutter/material.dart';
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