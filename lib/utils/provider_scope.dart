import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../providers/common/application_documents_directory.dart';
import '../services/shared_preferences.dart';

/// RootProviderScope で指定する List<Override> を取得する。
Future<List<Override>> get providerScopeOverrides async {
  return <Override>[
    applicationDocumentsDirectoryProvider.overrideWithValue(
      await getApplicationDocumentsDirectory(),
    ),
    sharedPreferencesProvider.overrideWithValue(
      await SharedPreferences.getInstance(),
    ),
  ];
}
