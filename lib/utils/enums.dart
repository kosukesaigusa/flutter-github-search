import '../constants/string.dart';

/// API のエラー種別
enum ErrorCode {
  none,
  exception,
  notFound,
  internetConnection,
  unauthorized,
}

/// GET /search/repository API や GET /repos/{owner}/{repo}/issues API
/// をコールする上での条件や結果に関するエラー
enum FetchResponseErrorEnum {
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

extension FetchResponseErrorEnumExtension on FetchResponseErrorEnum {
  String get message {
    switch (this) {
      case FetchResponseErrorEnum.none:
        return '';
      case FetchResponseErrorEnum.emptyQ:
        return emptyQMessage;
      case FetchResponseErrorEnum.pageNotValid:
        return 'ページ番号が正しくありません。';
      case FetchResponseErrorEnum.perPageNotValid:
        return '1 ページあたりの件数が正しくありません。';
      case FetchResponseErrorEnum.apiError:
        return 'リポジトリの検索に失敗しました。';
      case FetchResponseErrorEnum.other:
        return 'エラーが発生しました。検索条件を見直してください。';
    }
  }
}
