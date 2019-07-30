import 'package:fish_redux/fish_redux.dart';

import 'package:qianji/pages/fish/action.dart';
import 'package:qianji/pages/fish/state.dart';

Reducer<fishState> buildReducer() {
  return asReducer(
    <Object, Reducer<fishState>>{
      fishAction.action: _onAction,
    },
  );
}

fishState _onAction(fishState state, Action action) {
  final fishState newState = state.clone();
  return newState;
}
