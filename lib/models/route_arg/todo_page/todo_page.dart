import 'package:freezed_annotation/freezed_annotation.dart';

import '../../todo/todo.dart';

part 'todo_page.freezed.dart';

/// TodoPage に渡すべきルート引数に
/// インスタンスを直接渡すパターンと
/// id を渡して、画面描画前に fetch をするパターンとがあるので
/// それらを freezed で Union/Sealed クラス的に定義する。
@freezed
class TodoPageRouteArgument with _$TodoPageRouteArgument {
  /// インスタンスを直接渡すパターン。
  const factory TodoPageRouteArgument.instance(Todo todo) = Instance;

  /// id を渡すパターン。
  const factory TodoPageRouteArgument.id(int id) = Id;
}
