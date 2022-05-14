import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key, this.exception});

  final Exception? exception;

  static const path = '/not-found/';
  static const name = 'NotFoundPage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          exception == null ? '指定されたページが見つかりませんでした。' : exception.toString(),
        ),
      ),
    );
  }
}
