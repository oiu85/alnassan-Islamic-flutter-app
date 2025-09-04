import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/models/page_state/bloc_status.dart';
import '../../../../../core/utils/logger/log_helper.dart';
import '../../../../../features/html_viewer/domain/models/html_content.dart';
import '../../domain/use_case/get_biography_use_case.dart';
import 'biography_event.dart';
import 'biography_state.dart';

@injectable
class BiographyBloc extends Bloc<BiographyEvent, BiographyState> {
  final GetBiographyUseCase _getBiographyUseCase;

  BiographyBloc(this._getBiographyUseCase) : super(const BiographyState()) {
    on<FetchBiographyArticleEvent>(_onFetchBiographyArticle);
  }

  Future<void> _onFetchBiographyArticle(
    FetchBiographyArticleEvent event,
    Emitter<BiographyState> emit,
  ) async {
    try {
      LogHelper.logInfo('Initiating Biography Article data fetch');
      emit(state.copyWith(status: const BlocStatus.loading()));

      final article = await _getBiographyUseCase();

      if (article.content == null || article.content!.isEmpty) {
        LogHelper.logWarning('No article content found');
        emit(
          state.copyWith(
            status: const BlocStatus.fail(
              error: 'No article content found',
            ),
          ),
        );
        return;
      }
      
      // Convert article to HtmlContent
      final htmlContent = HtmlContent(
        title: article.title ?? 'السيرة الذاتية',
        htmlContent: article.content ?? '',
        summary: article.summary,
        description: article.content,
        articleId: article.id,
        categoryId: article.categoryId,
        imageUrl: article.imageUrl,
        date: article.date
      );

      LogHelper.logInfo('Successfully fetched Biography Article data and converted to HtmlContent');
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
          article: article,
          htmlContent: htmlContent,
        ),
      );
    } on DioException catch (e) {
      LogHelper.logFetchError(e);
      emit(
        state.copyWith(
          status: BlocStatus.fail(
            error: e.message ?? 'Connection attempt failed',
          ),
        ),
      );
    } catch (e) {
      LogHelper.logError('Unexpected error while fetching biography article', stackTrace: (e as Error).stackTrace.toString());
      emit(
        state.copyWith(
          status: BlocStatus.fail(error: 'Unexpected error occurred'),
        ),
      );
    }
  }
}
