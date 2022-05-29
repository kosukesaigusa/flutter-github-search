import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/route_arg/todo_page/todo_page.dart';
import '../../models/todo/todo.dart';
import '../../services/scaffold_messenger.dart';
import '../../utils/route.dart';
import '../first/first_page.dart';
import '../second/second_page.dart';
import '../todo/todo_page.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  static const path = '/home/';
  static const name = 'HomePage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GitHub Search'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              key: const ValueKey(FirstPage.path),
              onPressed: () => Navigator.pushNamed<void>(context, FirstPage.path),
              child: const Text('Go to ${FirstPage.name}'),
            ),
            const Gap(16),
            ElevatedButton(
              key: const ValueKey(SecondPage.path),
              onPressed: () => Navigator.pushNamed<void>(context, SecondPage.path),
              child: const Text('Go to ${SecondPage.name}'),
            ),
            const Gap(16),
            ElevatedButton(
              key: const ValueKey('${TodoPage.path}: instance'),
              onPressed: () => Navigator.pushNamed<void>(
                context,
                TodoPage.path,
                arguments: RouteArguments(
                  <String, dynamic>{
                    'arg': const TodoPageRouteArgument.instance(
                      Todo(
                        id: 1,
                        title: '未完のタスク',
                        isDone: false,
                      ),
                    )
                  },
                ),
              ),
              child: const Text('Go to ${TodoPage.name} by instance'),
            ),
            const Gap(16),
            ElevatedButton(
              key: const ValueKey('${TodoPage.path}: id'),
              onPressed: () => Navigator.pushNamed<void>(
                context,
                TodoPage.path,
                arguments: RouteArguments(
                  <String, dynamic>{
                    'arg': const TodoPageRouteArgument.id(2),
                  },
                ),
              ),
              child: const Text('Go to ${TodoPage.name} by id'),
            ),
            const Gap(16),
            ElevatedButton(
              key: const ValueKey('SnackBar'),
              onPressed: () =>
                  ref.read(scaffoldMessengerServiceProvider).showSnackBar('A SnackBar is shown.'),
              child: const Text('Show SnackBar'),
            ),
          ],
        ),
      ),
    );
  }
}
