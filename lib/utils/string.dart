import 'package:intl/intl.dart';

/// 3 桁区切りのコンマのフォーマット
final threeDigitsFormatter = NumberFormat('#,###');

/// 数字に 3 桁区切りのコンマを付加した文字列を返す
String addComma(int number) => threeDigitsFormatter.format(number);

/// 数字に 3 桁区切りのコンマを付加、末尾に「円」を付けた文字列を返す
String toJpy(int number) => '${threeDigitsFormatter.format(number)} 円';
