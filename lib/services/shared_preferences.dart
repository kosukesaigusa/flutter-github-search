import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// SharedPreferencesKey で管理するデータの列挙
enum SharedPreferencesKey {
  issueTitle,
  issueBody,
}

/// SharedPreferences のインスタンスのプロバイダ
final sharedPreferencesProvider = Provider<SharedPreferences>((_) => throw UnimplementedError());

/// SharedPreferences によるデータの読み書きをする
/// サービスクラスを提供するプロバイダ。
final sharedPreferencesServiceProvider =
    Provider<SharedPreferencesService>((ref) => SharedPreferencesService(ref.read));

class SharedPreferencesService {
  SharedPreferencesService(this._read);
  final Reader _read;

  // /// int 型のキー・バリューを保存する
  // Future<int> _getInt(SharedPreferencesKey key) async {
  //   return _read(sharedPreferencesProvider).getInt(key.name) ?? 0;
  // }

  // /// String 型のキー・バリューを保存する
  // Future<String> _getString(SharedPreferencesKey key) async {
  //   return _read(sharedPreferencesProvider).getString(key.name) ?? '';
  // }

  // /// String 型のキー・バリューを取得する
  // Future<String> _getStringByStringKey(String stringKey) async {
  //   return _read(sharedPreferencesProvider).getString(stringKey) ?? '';
  // }

  // /// bool 型のキー・バリューを取得する
  // Future<bool> _getBool(SharedPreferencesKey key) async {
  //   return _read(sharedPreferencesProvider).getBool(key.name) ?? false;
  // }

  // /// int 型のキー・バリューペアを保存する
  // Future<bool> _setInt(SharedPreferencesKey key, int value) async {
  //   return _read(sharedPreferencesProvider).setInt(key.name, value);
  // }

  // /// String 型のキー・バリューペアを保存する
  // Future<bool> _setString(SharedPreferencesKey key, String value) async {
  //   return _read(sharedPreferencesProvider).setString(key.name, value);
  // }

  // /// String 型のキー・バリューペアを保存する
  // Future<bool> _setStringByStringKey(String stringKey, String value) async {
  //   return _read(sharedPreferencesProvider).setString(stringKey, value);
  // }

  // /// bool 型のキー・バリューペアを保存する
  // Future<bool> _setBool(SharedPreferencesKey key, bool value) async {
  //   return _read(sharedPreferencesProvider).setBool(key.name, value);
  // }

  /// SharedPreferences に保存している特定のキーを消す
  Future<bool> removeByStringKey(String stringKey) async {
    return _read(sharedPreferencesProvider).remove(stringKey);
  }

  /// SharedPreferences に保存している値をすべて消す
  Future<bool> clearAll() async {
    return _read(sharedPreferencesProvider).clear();
  }
}
