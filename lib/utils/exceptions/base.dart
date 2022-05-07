/// アプリ内で使用する例外型のインターフェース。
class AppException implements Exception {
  const AppException({
    this.code,
    this.message,
    this.defaultMessage = 'エラーが発生しました。',
  });

  ///
  final String? code;

  ///
  final String? message;

  ///
  final String defaultMessage;

  @override
  String toString() {
    if (code == null) {
      return message ?? defaultMessage;
    }
    return '[$code] ${message ?? defaultMessage}';
  }
}
