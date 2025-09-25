import 'package:flutter/material.dart';
import '../../data/repository/global_search_repository_impl.dart';
import '../../../../core/network/network_client.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../data/model/article_detail_model.dart';
import '../../data/model/sound_detail_model.dart';
import '../../../../features/html_viewer/domain/models/html_content.dart';
import '../../../../features/html_viewer/presentation/pages/html_book_viewer_page.dart';
import '../../../../features/sound_library/data/model.dart';
import '../../../../features/sound_library/presentation/widgets/music_player.dart';
import '../../../../features/advisory_fatwa/domain/model/advisory_detail.dart';
import '../../../../features/advisory_fatwa/presentation/pages/advisory_viewer_page.dart';

class SearchNavigationService {
  static final GlobalSearchRepositoryImpl _repository = 
      GlobalSearchRepositoryImpl(NetworkClient());

  /// Navigate to HTML viewer for an article
  static Future<void> navigateToArticle(BuildContext context, int articleId) async {
    try {
      AppLogger.business('Navigating to article', {'articleId': articleId});
      
      // Show loading indicator
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
      );

      final result = await _repository.getArticleDetail(articleId: articleId);
      
      // Hide loading indicator
      if (context.mounted) {
        Navigator.of(context).pop();
      }

      result.fold(
        (error) {
          AppLogger.error('Failed to load article: $error');
          if (context.mounted) {
            _showErrorDialog(context, 'فشل في تحميل المقال', error);
          }
        },
        (articleDetail) {
          if (context.mounted) {
            _navigateToHtmlViewer(context, articleDetail);
          }
        },
      );
    } catch (e) {
      AppLogger.error('Error navigating to article: $e');
      if (context.mounted) {
        Navigator.of(context).pop(); // Hide loading indicator
        _showErrorDialog(context, 'خطأ في التنقل', e.toString());
      }
    }
  }

  /// Navigate to sound player for a sound
  static Future<void> navigateToSound(BuildContext context, int soundId) async {
    try {
      AppLogger.business('Navigating to sound', {'soundId': soundId});
      
      // Show loading indicator
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
      );

      final result = await _repository.getSoundDetail(soundId: soundId);
      
      // Hide loading indicator
      if (context.mounted) {
        Navigator.of(context).pop();
      }

      result.fold(
        (error) {
          AppLogger.error('Failed to load sound: $error');
          if (context.mounted) {
            _showErrorDialog(context, 'فشل في تحميل الصوت', error);
          }
        },
        (soundDetail) {
          if (context.mounted) {
            _navigateToMusicPlayer(context, soundDetail);
          }
        },
      );
    } catch (e) {
      AppLogger.error('Error navigating to sound: $e');
      if (context.mounted) {
        Navigator.of(context).pop(); // Hide loading indicator
        _showErrorDialog(context, 'خطأ في التنقل', e.toString());
      }
    }
  }

  /// Navigate to HTML viewer with article detail
  static void _navigateToHtmlViewer(BuildContext context, ArticleDetailModel articleDetail) {
    final htmlContent = HtmlContent(
      title: articleDetail.title,
      htmlContent: articleDetail.description,
      summary: articleDetail.summary,
      description: articleDetail.description,
      articleId: articleDetail.id,
      categoryId: articleDetail.categoryId.toString(),
      imageUrl: articleDetail.image,
      date: articleDetail.date,
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HtmlBookViewerPage(
          htmlContent: htmlContent,
        ),
      ),
    );
  }

  /// Navigate to music player with sound detail
  static void _navigateToMusicPlayer(BuildContext context, SoundDetailModel soundDetail) {
    // Convert SoundDetailModel to SoundData for the music player
    final soundData = SoundData(
      soundId: soundDetail.id,
      soundTitle: soundDetail.title,
      soundSummary: soundDetail.summary,
      soundDes: soundDetail.description,
      soundCatId: soundDetail.categoryId,
      soundPic: soundDetail.image,
      soundVisitor: soundDetail.plays,
      soundPriority: 0,
      soundDate: soundDetail.date,
      soundFile: soundDetail.fileUrl,
      soundSourceUrl: soundDetail.sourceUrl,
      soundYoutubeId: soundDetail.youtubeId,
      soundActive: soundDetail.isActive,
      soundPicUrl: soundDetail.image,
      soundFileUrl: soundDetail.fileUrl,
      category: CategoryData(
        catId: soundDetail.categoryId,
        catTitle: soundDetail.categoryName,
      ),
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MusicPlayer(sound: soundData),
      ),
    );
  }

  /// Navigate to advisory viewer for an advisory
  static Future<void> navigateToAdvisory(BuildContext context, int advisoryId) async {
    try {
      AppLogger.business('Navigating to advisory', {'advisoryId': advisoryId});
      
      // Show loading indicator
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => const Center(
          child: CircularProgressIndicator(),
        ),
      );

      final result = await _repository.getAdvisoryDetail(advisoryId: advisoryId);
      
      // Hide loading indicator
      if (context.mounted) {
        Navigator.of(context).pop();
      }

      result.fold(
        (error) {
          AppLogger.error('Failed to load advisory: $error');
          if (context.mounted) {
            _showErrorDialog(context, 'فشل في تحميل الفتوى', error);
          }
        },
        (advisoryDetail) {
          if (context.mounted) {
            _navigateToAdvisoryViewer(context, advisoryDetail);
          }
        },
      );
    } catch (e) {
      AppLogger.error('Error navigating to advisory: $e');
      if (context.mounted) {
        Navigator.of(context).pop(); // Hide loading indicator
        _showErrorDialog(context, 'خطأ في التنقل', e.toString());
      }
    }
  }

  /// Navigate to advisory viewer with advisory detail
  static void _navigateToAdvisoryViewer(BuildContext context, AdvisoryDetail advisoryDetail) {
    AppLogger.business('Navigating to advisory viewer', {
      'advisoryId': advisoryDetail.advisoryId,
    });
    
    if (advisoryDetail.advisoryId == null || advisoryDetail.advisoryId == 0) {
      AppLogger.error('Invalid advisory ID: ${advisoryDetail.advisoryId}');
      _showErrorDialog(context, 'خطأ في البيانات', 'معرف الفتوى غير صحيح');
      return;
    }
    
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AdvisoryViewerPage(advisoryId: advisoryDetail.advisoryId!),
      ),
    );
  }

  /// Show error dialog
  static void _showErrorDialog(BuildContext context, String title, String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('موافق'),
          ),
        ],
      ),
    );
  }
}
