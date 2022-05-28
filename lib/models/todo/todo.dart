import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

/// ThirdPage で用いる実装テスト用のクラス。
@freezed
class Todo with _$Todo {
  const factory Todo({
    required int id,
    required String title,
    @Default(false) bool isDone,
  }) = _Todo;
}
