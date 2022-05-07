/// アプリ内で使用する例外型のインターフェース。
abstract class AbstractAppException implements Exception {
  const AbstractAppException({this.message});

  final String? message;

  @override
  String toString();
}
