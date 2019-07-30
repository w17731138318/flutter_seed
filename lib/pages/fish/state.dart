import 'package:fish_redux/fish_redux.dart';

class fishState implements Cloneable<fishState> {

  @override
  fishState clone() {
    return fishState();
  }
}

fishState initState(Map<String, dynamic> args) {
  return fishState();
}
