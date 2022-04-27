import 'package:cookie_jar/cookie_jar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'application_documents_directory.dart';

/// CookieJar のプロバイダ
final cookieJarProvider = Provider<CookieJar>(
  (ref) => PersistCookieJar(
    ignoreExpires: true,
    storage: FileStorage(ref.read(applicationDocumentsDirectoryProvider).path),
  ),
);
