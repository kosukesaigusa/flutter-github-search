import '../constants/map.dart';
import '../constants/string.dart';

/// 型不定 (dynamic) なレスポンスデータを Map<String, dynamic> に変換する。
Map<String, dynamic> toResponseJson(dynamic data) {
  if (data == null) {
    return emptyMap;
  }
  if (data is List) {
    // リストの場合は適当なキー名として 'items' をつける
    return <String, dynamic>{'items': data};
  }
  if (data is Map) {
    return data as Map<String, dynamic>;
  }
  // リストでもマップでもない場合は存在するのか？？
  // 存在しない想定でとりあえず空のマップを返すことにした。
  return emptyMap;
}

/// HTTP 通信でのエラーの種別の列挙
/// いまは ConnectivityInterceptor で onRequest をインターセプトして
/// ネットワーク接続を確認したときに、接続がない場合の networkNotConnected しかない。
/// 必要に応じて増やす。
enum ErrorCode {
  networkNotConnected,
}

/// GET /search/repository API や GET /repos/{owner}/{repo}/issues API
/// をコールする上での条件や結果に関するエラー
enum FetchResponseError {
  /// 正常
  none(message: ''),

  /// 検索ワード
  emptyQ(message: emptyQMessage),

  /// ページ番号が正しくない
  pageNotValid(message: 'ページ番号が正しくありません。'),

  /// 1 ページあたりの番号が正しくない
  perPageNotValid(message: '1 ページあたりの件数が正しくありません。'),

  /// API エラー
  apiError(message: 'リポジトリの検索に失敗しました。'),

  /// その他
  other(message: 'エラーが発生しました。検索条件を見直してください。');

  const FetchResponseError({required this.message});

  final String message;
}
