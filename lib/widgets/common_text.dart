import 'package:flutter/material.dart';

/// Repository 一覧ページや Issues 一覧のページに表示するテキスト
class CommonTextWidget extends StatelessWidget {
  const CommonTextWidget(
    this.text, {
    Key? key,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.black54,
        ),
      ),
    );
  }
}
