import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app.dart';
import 'providers/common/application_documents_directory.dart';
import 'services/shared_preferences.dart';
import 'widgets/root.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // 画面の向きを固定
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    RootWidget(
      child: ProviderScope(
        // ProviderScope の overrides したい Provider やその値を列挙する。
        // 起動時に一回インスタンス化したキャッシュを使いませせるようにすることで、
        // それ以降 await なしでアクセスしたいときなどに便利。
        overrides: [
          applicationDocumentsDirectoryProvider.overrideWithValue(
            await getApplicationDocumentsDirectory(),
          ),
          sharedPreferencesProvider.overrideWithValue(
            await SharedPreferences.getInstance(),
          ),
        ],
        child: const App(),
      ),
    ),
  );
}
