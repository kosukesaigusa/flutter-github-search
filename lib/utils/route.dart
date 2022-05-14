import '../utils/types.dart';

/// Route 引数に指定する型。中身は Map<String, dynamic>
class RouteArguments {
  RouteArguments(this.data);

  final Map<String, dynamic> data;

  dynamic operator [](String key) => data[key];
}

/// パス文字列と対応するウィジェットを返すビルダーからなる
/// ルートに関するクラス。
class AppRoute {
  AppRoute(this.path, this.pageBuilder);

  final String path;
  final PageBuilder pageBuilder;
}

/// 指定した Route のパスが見つからない場合の例外
class RouteNotFoundException implements Exception {
  RouteNotFoundException(this.path);
  final String path;

  @override
  String toString() => '$path：指定されたページが見つかりませんでした。';
}
