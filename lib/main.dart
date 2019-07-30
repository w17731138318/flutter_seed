import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';
import 'package:qianji/pages/fish/page.dart';

import 'nav/tab_nav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.green,
      ),
      home: TabNav(),
    );
  }
//  @override
//  Widget build(BuildContext context) {
//    final AbstractRoutes routes = PageRoutes(
//      pages: <String, Page<Object, dynamic>>{
//        'homePage': FishPage(),
//      },
//    );
//    return MaterialApp(
//      home: routes.buildPage('homePage', null),
//      onGenerateRoute: (RouteSettings settings) {
//        return MaterialPageRoute<Object>(builder: (BuildContext context) {
//          return routes.buildPage(settings.name, settings.arguments);
//        });
//      },
//    );
//  }
}