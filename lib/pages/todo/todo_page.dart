import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/route_arg/todo_page/todo_page.dart';
import '../../models/todo/todo.dart';
import '../../providers/todo/todo.dart';
import '../../utils/route.dart';
import '../../widgets/loading.dart';

/// freezed の Union/Sealed クラス的な使い方を工夫して、
/// Todo インスタンスまたは対応する id のどちらかをルート引数として受け取り、
/// Todo を表示するテスト用のページ。
class TodoPage extends HookConsumerWidget {
  /// プライベートなコンストラクタ
  const TodoPage._({
    required this.arg,
    super.key,
  });

  /// ルート引数を渡す名前付きコンストラクタ
  /// いまは雑に Map<String, dynamic> にしているが、
  /// RouteArguments を総称型で書けば、ルート引数も型安全にできる。
  TodoPage.withArguments({
    Key? key,
    required RouteArguments args,
  }) : this._(
          key: key,
          arg: args['arg'] as TodoPageRouteArgument,
        );

  static const path = '/third/';
  static const name = 'TodoPage';

  final TodoPageRouteArgument arg;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: arg.when(
          instance: (todo) => TodoWidget(todo: todo),
          id: (id) => ref.watch(todoFutureProvider(id)).when(
                loading: () => const PrimarySpinkitCircle(),
                error: (_, __) => const SizedBox(),
                data: (todo) => TodoWidget(todo: todo),
              ),
        ),
      ),
    );
  }
}

class TodoWidget extends StatelessWidget {
  const TodoWidget({super.key, required this.todo});

  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(todo.isDone ? Icons.check_box : Icons.check_box_outline_blank),
      title: Text(todo.title),
    );
  }
}
