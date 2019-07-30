import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final PageController _controller = PageController(
    initialPage: 0
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('我的',style: const TextStyle(fontFamily: 'btxb',fontSize: 20.0)),
      )
    );
  }
}
