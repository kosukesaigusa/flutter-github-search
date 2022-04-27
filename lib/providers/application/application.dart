import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../route/main_tabs.dart';
import 'application_state.dart';

final applicationStateNotifierProvider =
    StateNotifierProvider<ApplicationStateNotifierProvider, ApplicationState>(
  (ref) => ApplicationStateNotifierProvider(),
);

class ApplicationStateNotifierProvider extends StateNotifier<ApplicationState> {
  ApplicationStateNotifierProvider() : super(const ApplicationState());

  final bottomTabKeys = {
    BottomTabEnum.home: GlobalKey<NavigatorState>(),
    BottomTabEnum.search: GlobalKey<NavigatorState>(),
  };
}
