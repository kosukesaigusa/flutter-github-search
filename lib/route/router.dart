import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../constants/map.dart';
import '../pages/not_found/not_found_page.dart';
import '../utils/bool.dart';
import '../utils/route.dart';
import 'routes.dart';

final routerProvider = Provider<Router>((ref) => Router(ref.read));

class Router {
  Router(this._read);

  final Reader _read;
  final initialRoute = '/';

  Route<dynamic> onGenerateRoute(RouteSettings routeSettings, {String? bottomNavigationPath}) {
    var path = _path(routeSettings, bottomNavigationPath: bottomNavigationPath);
    debugPrint('***');
    debugPrint('path: $path');

    // path に ? がついている場合は、それ以降をクエリストリングとみなし、
    // 分割して `queryParams` というマップに追加する。
    // path は ? 以前の文字列で上書きしておく。
    // 現状 fullScreenDialog=true くらいしか使いみちはない。
    var queryParams = emptyMap;
    if (path.contains('?')) {
      queryParams = Uri.parse(path).queryParameters;
      path = path.split('?').first;
    }

    // ページに渡す引数の Map<String, dynamic>
    final data = (routeSettings.arguments as RouteArguments?)?.data ?? emptyMap;

    try {
      // appRoutes の各要素のパスに一致する AppRoute を見つけて
      // 遷移先の Widget の MaterialPageRoute を返す
      final appRoute = _read(appRoutesProvider).firstWhere(
        (appRoute) => appRoute.path == path,
        orElse: () => throw RouteNotFoundException(path),
      );
      final route = MaterialPageRoute<dynamic>(
        settings: routeSettings,
        builder: (context) => appRoute.pageBuilder(context, RouteArguments(data)),
        fullscreenDialog: toBool(queryParams['fullScreenDialog'] ?? false),
      );
      return route;
    } on RouteNotFoundException catch (e) {
      final route = MaterialPageRoute<void>(
        settings: routeSettings,
        builder: (context) => NotFoundPage(exception: e),
      );
      return route;
    }
  }

  /// onGenerateRoute と同じ引数を受けてパスを決定する。
  String _path(RouteSettings routeSettings, {String? bottomNavigationPath}) {
    final path = routeSettings.name;
    if (path == null) {
      return '';
    }
    if (bottomNavigationPath?.isEmpty ?? true) {
      return path;
    }
    if (path == initialRoute) {
      return bottomNavigationPath!;
    }
    return path;
  }
}
