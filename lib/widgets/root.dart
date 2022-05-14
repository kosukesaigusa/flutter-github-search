import 'package:flutter/material.dart';

/// runApp() の引数にするべき
/// アプリケーションのルートのウィジェット
class RootWidget extends StatefulWidget {
  const RootWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  static void restart(BuildContext context) {
    context.findAncestorStateOfType<_RootWidgetState>()?.restart();
  }

  @override
  State<StatefulWidget> createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  Key key = UniqueKey();

  void restart() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }
}
