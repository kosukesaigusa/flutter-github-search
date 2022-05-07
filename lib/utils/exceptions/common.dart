import 'dart:io';

import '../../constants/string.dart';
import 'base.dart';

/// AbstractAppException 型を interface として実装した
/// アプリ内で用いる汎用的な例外型。
/// アプリ内の他の例外は、この AppException を extend して
/// デフォルトのメッセージ、特有のフィールドや toString() の挙動を定義する。
class AppException implements AbstractAppException {
  const AppException({this.message});

  @override
  final String? message;

  @override
  String toString() => message ?? generalExceptionMessage;
}

/// Platform が iOS, Android のどちらにも該当しないときに使用する Exception
class UnsupportedPlatformException extends AppException {
  const UnsupportedPlatformException();

  @override
  String get message => '${Platform.operatingSystem} はサポートされていません。';
}
