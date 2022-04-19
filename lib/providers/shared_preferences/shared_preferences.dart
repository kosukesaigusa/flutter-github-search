import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// SharedPreferences のインスタンスのプロバイダ
final sharedPreferencesProvider = Provider<SharedPreferences>((_) => throw UnimplementedError());
