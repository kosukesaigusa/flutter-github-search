import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key, this.exception}) : super(key: key);

  final Exception? exception;

  static const path = '/not-found/';
  static const name = 'NotFoundPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('ページが見つかりませんでした：${exception.toString()}'),
      ),
    );
  }
}
