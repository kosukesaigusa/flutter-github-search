import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class IssuePage extends StatefulHookConsumerWidget {
  const IssuePage({Key? key}) : super(key: key);

  static const path = '/issue/';
  static const name = 'IssuePage';

  @override
  ConsumerState<IssuePage> createState() => _IssuePageState();
}

class _IssuePageState extends ConsumerState<IssuePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SizedBox());
  }
}
