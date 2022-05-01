import 'package:hooks_riverpod/hooks_riverpod.dart';

/// GitHub のアクセストークンを提供するプロバイダ
final gitHubAccessTokenProvider =
    StateProvider.autoDispose<String>((_) => const String.fromEnvironment('GITHUB_ACCESS_TOKEN'));
