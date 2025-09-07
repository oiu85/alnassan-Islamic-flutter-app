import 'package:equatable/equatable.dart';
import '../../domain/models/html_content.dart';


abstract class HtmlViewerEvent extends Equatable {
  const HtmlViewerEvent();

  @override
  List<Object?> get props => [];
}

class InitializeHtmlViewerEvent extends HtmlViewerEvent {
  final HtmlContent htmlContent;
  const InitializeHtmlViewerEvent(this.htmlContent);
  @override
  List<Object?> get props => [htmlContent];
}


class NavigateToPageEvent extends HtmlViewerEvent {
  final int pageNumber;

  const NavigateToPageEvent(this.pageNumber);

  @override
  List<Object?> get props => [pageNumber];
}


class NextPageEvent extends HtmlViewerEvent {}


class PreviousPageEvent extends HtmlViewerEvent {}


class ChangeTextSizeEvent extends HtmlViewerEvent {

  final double textSize;

  const ChangeTextSizeEvent(this.textSize);

  @override
  List<Object?> get props => [textSize];
}


class ChangeThemeEvent extends HtmlViewerEvent {

  final bool isDarkMode;

  const ChangeThemeEvent(this.isDarkMode);

  @override
  List<Object?> get props => [isDarkMode];
}


class ExtractTextEvent extends HtmlViewerEvent {}


class ShareContentEvent extends HtmlViewerEvent {}




