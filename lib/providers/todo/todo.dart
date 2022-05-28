import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/todo/todo.dart';

/// API 通信などを模擬して、
/// 1 秒経ったら指定した id の ToDo インスタンスを返す FutureProvider。
final todoFutureProvider = FutureProvider.autoDispose.family<Todo, int>((ref, id) async {
  return Future<Todo>.delayed(
    const Duration(seconds: 1),
    () => Todo(id: id, title: '完了した Todo', isDone: true),
  );
});
