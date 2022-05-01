import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'application_state.dart';

final applicationStateNotifierProvider =
    StateNotifierProvider<ApplicationStateNotifierProvider, ApplicationState>(
  (ref) => ApplicationStateNotifierProvider(),
);

class ApplicationStateNotifierProvider extends StateNotifier<ApplicationState> {
  ApplicationStateNotifierProvider() : super(const ApplicationState());

  // final bottomTabKeys = {
  //   BottomTabEnum.home: GlobalKey<NavigatorState>(),
  //   BottomTabEnum.repo: GlobalKey<NavigatorState>(),
  //   BottomTabEnum.repo: GlobalKey<NavigatorState>(),
  // };
}
