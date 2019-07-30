import "package:fish_redux/fish_redux.dart";
import 'package:qianji/pages/fish/action.dart';
import 'package:qianji/pages/fish/state.dart';

Effect<fishState> buildEffect() {
  return combineEffects(<Object, Effect<fishState>>{
    fishAction.action: _onAction,
  });
}

void _onAction(Action action, Context<fishState> ctx) {
}
