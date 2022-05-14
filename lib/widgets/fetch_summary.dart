import 'package:flutter/material.dart';

import '../utils/extensions/int.dart';
import 'common_text.dart';

/// Repository や Issue の取得結果の件数、現在のページ数、最大ページ数などを
/// 表示するウィジェット
class FetchSummaryWidget extends StatelessWidget {
  const FetchSummaryWidget({
    super.key,
    required this.totalCount,
    required this.currentPage,
    required this.maxPage,
  });

  final int totalCount;
  final int currentPage;
  final int maxPage;

  static const path = '/foo/';
  static const name = 'FetchSummaryWidget';

  @override
  Widget build(BuildContext context) {
    return CommonTextWidget(
      '全 ${totalCount.withComma} 件'
      '（${currentPage.withComma} / '
      '${maxPage.withComma} '
      'ページ）',
    );
  }
}
