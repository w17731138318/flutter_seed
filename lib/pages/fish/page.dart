import 'package:fish_redux/fish_redux.dart';

import 'package:qianji/pages/fish/effect.dart';
import 'package:qianji/pages/fish/reducer.dart';
import 'package:qianji/pages/fish/state.dart';
import 'package:qianji/pages/fish/view.dart';

class FishPage extends Page<fishState, Map<String, dynamic>> {
  FishPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<fishState>(
                adapter: null,
                slots: <String, Dependent<fishState>>{
                }),
            middleware: <Middleware<fishState>>[
            ],);

}
