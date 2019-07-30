import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  final PageController _controller = PageController(
    initialPage: 0
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('商城',style: const TextStyle(fontFamily: 'pmzd',fontSize: 20.0)),
      )
    );
  }
}
