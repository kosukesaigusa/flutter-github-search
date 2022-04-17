import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../services/api_client.dart';

final apiClientProvider = Provider.autoDispose<ApiClient>((ref) {
  return ApiClient();
});
