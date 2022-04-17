import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../route/main_tabs.dart';
import 'application_state.dart';

final applicationController = StateNotifierProvider<ApplicationController, ApplicationState>(
  (ref) => ApplicationController(),
);

class ApplicationController extends StateNotifier<ApplicationState> {
  ApplicationController() : super(const ApplicationState());

  final navigatorKeys = {
    BottomTabEnum.home: GlobalKey<NavigatorState>(),
    BottomTabEnum.search: GlobalKey<NavigatorState>(),
  };
}
