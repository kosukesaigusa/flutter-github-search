import 'dart:convert';

import 'package:flutter/services.dart';

const jsonFilePath = 'assets/json/env/env.json';

/// テストでは毎度 dart-define を指定して実行するのが面倒なので
/// env.json に書いた環境変数に対応する値をこのメソッドで読み込んで使用する。
Future<Map<String, dynamic>> get fetchEnvVars async {
  final data = await rootBundle.load(jsonFilePath);
  return json.decode(
    utf8.decode(
      data.buffer.asUint8List(
        data.offsetInBytes,
        data.lengthInBytes,
      ),
    ),
  ) as Map<String, dynamic>;
}
