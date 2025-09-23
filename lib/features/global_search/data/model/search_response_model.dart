import 'search_article_model.dart';
import 'search_sound_model.dart';

class SearchResponseModel {
  final String status;
  final SearchDataModel data;
  final SearchMetaModel meta;

  const SearchResponseModel({
    required this.status,
    required this.data,
    required this.meta,
  });

  factory SearchResponseModel.fromJson(Map<String, dynamic> json) {
    return SearchResponseModel(
      status: json['status'] as String? ?? 'success',
      data: SearchDataModel.fromJson(json['data'] as Map<String, dynamic>? ?? {}),
      meta: json['meta'] != null 
          ? SearchMetaModel.fromJson(json['meta'] as Map<String, dynamic>)
          : SearchMetaModel(
              searchInfo: SearchInfoModel(
                query: '',
                typeFilter: '',
                resultsPerType: 0,
              ),
              responseInfo: SearchResponseInfoModel(
                timestamp: '',
                apiVersion: '',
                endpoint: '',
                contentType: '',
              ),
            ),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'data': data.toJson(),
      'meta': meta.toJson(),
    };
  }
}

class SearchDataModel {
  final List<SearchArticleModel> articles;
  final List<SearchSoundModel> sounds;
  final List<dynamic> advisories; // For future use

  const SearchDataModel({
    this.articles = const [],
    this.sounds = const [],
    this.advisories = const [],
  });

  factory SearchDataModel.fromJson(Map<String, dynamic> json) {
    return SearchDataModel(
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => SearchArticleModel.fromJson(e as Map<String, dynamic>))
          .toList() ?? [],
      sounds: (json['sounds'] as List<dynamic>?)
          ?.map((e) => SearchSoundModel.fromJson(e as Map<String, dynamic>))
          .toList() ?? [],
      advisories: json['advisories'] as List<dynamic>? ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'articles': articles.map((e) => e.toJson()).toList(),
      'sounds': sounds.map((e) => e.toJson()).toList(),
      'advisories': advisories,
    };
  }
}

class SearchMetaModel {
  final SearchInfoModel searchInfo;
  final SearchResponseInfoModel responseInfo;

  const SearchMetaModel({
    required this.searchInfo,
    required this.responseInfo,
  });

  factory SearchMetaModel.fromJson(Map<String, dynamic> json) {
    return SearchMetaModel(
      searchInfo: SearchInfoModel.fromJson(json['search_info'] as Map<String, dynamic>),
      responseInfo: SearchResponseInfoModel.fromJson(json['response_info'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'search_info': searchInfo.toJson(),
      'response_info': responseInfo.toJson(),
    };
  }
}

class SearchInfoModel {
  final String query;
  final String typeFilter;
  final int resultsPerType;

  const SearchInfoModel({
    required this.query,
    required this.typeFilter,
    required this.resultsPerType,
  });

  factory SearchInfoModel.fromJson(Map<String, dynamic> json) {
    return SearchInfoModel(
      query: json['query'] as String,
      typeFilter: json['type_filter'] as String,
      resultsPerType: json['results_per_type'] as int,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'query': query,
      'type_filter': typeFilter,
      'results_per_type': resultsPerType,
    };
  }
}

class SearchResponseInfoModel {
  final String timestamp;
  final String apiVersion;
  final String endpoint;
  final String contentType;

  const SearchResponseInfoModel({
    required this.timestamp,
    required this.apiVersion,
    required this.endpoint,
    required this.contentType,
  });

  factory SearchResponseInfoModel.fromJson(Map<String, dynamic> json) {
    return SearchResponseInfoModel(
      timestamp: json['timestamp'] as String,
      apiVersion: json['api_version'] as String,
      endpoint: json['endpoint'] as String,
      contentType: json['content_type'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'timestamp': timestamp,
      'api_version': apiVersion,
      'endpoint': endpoint,
      'content_type': contentType,
    };
  }
}
