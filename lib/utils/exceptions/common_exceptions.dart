import 'dart:io';

import 'base.dart';

/// Platform が iOS, Android のどちらにも該当しないときに使用する Exception
class UnsupportedPlatformException extends AppException {
  const UnsupportedPlatformException() : super();

  @override
  String get message => '${Platform.operatingSystem} はサポートされていません。';
}
