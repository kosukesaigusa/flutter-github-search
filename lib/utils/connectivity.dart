import 'package:connectivity_plus/connectivity_plus.dart';

/// インターネットに接続しているかどうか
Future<bool> get isNetworkConnected async {
  final result = await Connectivity().checkConnectivity();
  return result != ConnectivityResult.none;
}
