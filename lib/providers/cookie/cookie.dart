import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// cookie の保存先としても使用する ApplicationDocumentDirectory のプロバイダ
final applicationDocumentsDirectoryProvider =
    Provider<Directory>((_) => throw UnimplementedError());

/// CookieJar のプロバイダ
final cookieJarProvider = Provider<CookieJar>(
  (ref) => PersistCookieJar(
    ignoreExpires: true,
    storage: FileStorage(ref.read(applicationDocumentsDirectoryProvider).path),
  ),
);
