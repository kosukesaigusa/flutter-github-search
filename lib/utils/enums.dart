import '../constants/string.dart';

/// API のエラー種別
enum ErrorCode {
  none,
  exception,
  notFound,
  internetConnection,
  unauthorized,
}

/// GET /search/repository をする上での検索条件や結果に関するエラー
enum SearchRepoErrorEnum {
  /// 正常
  none,

  /// 検索ワード
  emptyQ,

  /// ページ番号が正しくない
  pageNotValid,

  /// 1 ページあたりの番号が正しくない
  perPageNotValid,

  /// API エラー
  apiError,

  /// その他
  other,
}

extension SearchRepoErrorEnumExtension on SearchRepoErrorEnum {
  String get message {
    switch (this) {
      case SearchRepoErrorEnum.none:
        return '';
      case SearchRepoErrorEnum.emptyQ:
        return emptyQMessage;
      case SearchRepoErrorEnum.pageNotValid:
        return 'ページ番号が正しくありません。';
      case SearchRepoErrorEnum.perPageNotValid:
        return '1 ページあたりの件数が正しくありません。';
      case SearchRepoErrorEnum.apiError:
        return 'リポジトリの検索に失敗しました。';
      case SearchRepoErrorEnum.other:
        return 'エラーが発生しました。検索条件を見直してください。';
    }
  }
}
