import 'package:flutter/material.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';

/// Floating download progress widget that overlays on the sound card
class FloatingDownloadProgress extends StatelessWidget {
  final double progress;
  final int downloadedBytes;
  final int totalBytes;
  final String fileName;

  const FloatingDownloadProgress({
    super.key,
    required this.progress,
    required this.downloadedBytes,
    required this.totalBytes,
    required this.fileName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: AppColors.primary.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header with download icon and title
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: AppColors.primary.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(
                  Icons.download,
                  color: AppColors.primary,
                  size: 16,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'جاري التحميل...',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          
          // File name
          Text(
            fileName,
            style: const TextStyle(
              fontSize: 12,
              color: AppColors.grey,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          
          // Progress bar
          Container(
            height: 6,
            decoration: BoxDecoration(
              color: AppColors.grey.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(3),
            ),
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: progress,
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
          
          // Progress text and file size
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${(progress * 100).toInt()}%',
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              ),
              Text(
                '${_formatBytes(downloadedBytes)} / ${_formatBytes(totalBytes)}',
                style: const TextStyle(
                  fontSize: 11,
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Formats bytes into human readable format
  String _formatBytes(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KB';
    if (bytes < 1024 * 1024 * 1024) return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MB';
    return '${(bytes / (1024 * 1024 * 1024)).toStringAsFixed(1)} GB';
  }
}

/// Floating download progress with overlay positioning
class FloatingDownloadOverlay extends StatelessWidget {
  final Widget child;
  final double progress;
  final int downloadedBytes;
  final int totalBytes;
  final String fileName;
  final bool showProgress;

  const FloatingDownloadOverlay({
    super.key,
    required this.child,
    required this.progress,
    required this.downloadedBytes,
    required this.totalBytes,
    required this.fileName,
    this.showProgress = false,
  });

  @override
  Widget build(BuildContext context) {
    // Debug logging
    if (showProgress) {
      debugPrint('🎭 FloatingDownloadOverlay: showProgress = true, progress: ${(progress * 100).toInt()}%, bytes: $downloadedBytes/$totalBytes');
    }
    
    return Stack(
      children: [
        // Original content
        child,
        
        // Floating progress overlay
        if (showProgress)
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.3),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: FloatingDownloadProgress(
                  progress: progress,
                  downloadedBytes: downloadedBytes,
                  totalBytes: totalBytes,
                  fileName: fileName,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
