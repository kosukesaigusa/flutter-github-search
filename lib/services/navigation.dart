import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../providers/bottom_tab/bottom_tab.dart';
import '../route/bottom_tabs.dart';
import '../utils/route.dart';

final navigationServiceProvider =
    Provider.autoDispose<NavigationService>((ref) => NavigationService(ref.read));

class NavigationService {
  NavigationService(this._read);

  final Reader _read;

  /// 現在アクティブな下タブに指定したパスのページを push する。
  Future<void> pushOnCurrentTab({
    required String path,
    required Map<String, dynamic> data,
  }) async =>
      _read(bottomTabStateProvider)
          .key
          .currentState
          ?.pushNamed<void>(path, arguments: RouteArguments(data));

  /// 一度 MainPage まで画面を pop した上で、
  /// 指定したタブをアクティブにして、その上で指定したパスのページを push する。
  /// 指定したパスが MainPage のいずれかのページのパスと一致する場合には push せず、
  /// そのタブをアクティブにするだけで終わりにする。
  Future<void> popUntilFirstRouteAndPushOnSpecifiedTab({
    required BottomTab bottomTab,
    required String path,
    required Map<String, dynamic> data,
  }) async {
    final currentContext = _read(bottomTabStateProvider).key.currentContext;
    if (currentContext == null) {
      return;
    }
    Navigator.popUntil(currentContext, (route) => route.isFirst);
    _read(bottomTabStateProvider.notifier).update((state) => bottomTab);
    return _read(bottomTabStateProvider)
        .key
        .currentState
        ?.pushNamed<void>(path, arguments: RouteArguments(data));
  }
}
