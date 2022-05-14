import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FirstPage extends HookConsumerWidget {
  const FirstPage({Key? key}) : super(key: key);

  static const path = '/first/';
  static const name = 'FirstPage';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = useState<int>(0);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(name),
            const Gap(8),
            const Text('You have pushed the button this many time:'),
            Text('${counter.value}'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter.value++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
