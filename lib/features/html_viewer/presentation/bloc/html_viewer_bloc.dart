import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/models/page_content.dart';
import '../../data/repositories/html_viewer_repository.dart';
import 'html_viewer_event.dart';
import 'html_viewer_state.dart';


@injectable
class HtmlViewerBloc extends Bloc<HtmlViewerEvent, HtmlViewerState> {

  final HtmlViewerRepository repository;

  HtmlViewerBloc(this.repository) : super(const HtmlViewerState()) {
    on<InitializeHtmlViewerEvent>(_onInitialize);
    on<NavigateToPageEvent>(_onNavigateToPage);
    on<NextPageEvent>(_onNextPage);
    on<PreviousPageEvent>(_onPreviousPage);
    on<ChangeTextSizeEvent>(_onChangeTextSize);
    on<ChangeThemeEvent>(_onChangeTheme);
    on<ExtractTextEvent>(_onExtractText);
    on<ShareContentEvent>(_onShareContent);
  }


  void _onInitialize(InitializeHtmlViewerEvent event, Emitter<HtmlViewerState> emit) {
    emit(state.copyWith(status: HtmlViewerStatus.loading));
    
    try {
      final htmlContent = event.htmlContent;
      final List<PageContent> pages = repository.parseHtmlToPages(htmlContent);
      
      if (pages.isEmpty) {
        emit(state.copyWith(
          status: HtmlViewerStatus.error,
          errorMessage: 'No content to display',
        ));
        return;
      }
      
      emit(state.copyWith(
        status: HtmlViewerStatus.loaded,
        htmlContent: htmlContent,
        pages: pages,
        currentPage: pages.first,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: HtmlViewerStatus.error,
        errorMessage: 'Failed to load content: ${e.toString()}',
      ));
    }
  }


  void _onNavigateToPage(NavigateToPageEvent event, Emitter<HtmlViewerState> emit) {
    final int pageNumber = event.pageNumber;
    
    // Validate page number
    if (pageNumber < 1 || pageNumber > state.pages.length) {
      emit(state.copyWith(
        errorMessage: 'Invalid page number: $pageNumber',
      ));
      return;
    }
    
    try {
      final PageContent newPage = state.pages[pageNumber - 1];
      emit(state.copyWith(currentPage: newPage));
    } catch (e) {
      emit(state.copyWith(
        errorMessage: 'Failed to navigate to page: ${e.toString()}',
      ));
    }
  }


  void _onNextPage(NextPageEvent event, Emitter<HtmlViewerState> emit) {
    if (state.currentPage == null) return;
    
    final int currentPageNumber = state.currentPage!.pageNumber;
    final int totalPages = state.pages.length;
    
    if (currentPageNumber < totalPages) {
      add(NavigateToPageEvent(currentPageNumber + 1));
    }
  }


  void _onPreviousPage(PreviousPageEvent event, Emitter<HtmlViewerState> emit) {
    if (state.currentPage == null) return;
    
    final int currentPageNumber = state.currentPage!.pageNumber;
    
    if (currentPageNumber > 1) {
      add(NavigateToPageEvent(currentPageNumber - 1));
    }
  }


  void _onChangeTextSize(ChangeTextSizeEvent event, Emitter<HtmlViewerState> emit) {
    emit(state.copyWith(textSize: event.textSize));
  }

  /// Handle the change theme event
  void _onChangeTheme(ChangeThemeEvent event, Emitter<HtmlViewerState> emit) {
    emit(state.copyWith(isDarkMode: event.isDarkMode));
  }

  /// Handle the extract text event
  void _onExtractText(ExtractTextEvent event, Emitter<HtmlViewerState> emit) {
    if (state.htmlContent == null) return;
    
    final String extractedText = repository.extractTextFromHtml(state.htmlContent!.htmlContent);
    emit(state.copyWith(extractedText: extractedText));
  }

  /// Handle the share content event
  void _onShareContent(ShareContentEvent event, Emitter<HtmlViewerState> emit) {
    if (state.extractedText == null) {
      add(ExtractTextEvent());
    }
    
    emit(state.copyWith(isSharing: true));
    // The actual sharing will happen in the UI layer
    emit(state.copyWith(isSharing: false));
  }
}
