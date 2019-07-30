import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum fishAction { action }

class fishActionCreator {
  static Action onAction() {
    return const Action(fishAction.action);
  }
}
