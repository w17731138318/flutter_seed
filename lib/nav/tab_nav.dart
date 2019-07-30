import 'package:flutter/material.dart';
import 'package:qianji/pages/home_page.dart';
import 'package:qianji/pages/search_page.dart';
import 'package:qianji/pages/shop_page.dart';
import 'package:qianji/pages/user_page.dart';

class TabNav extends StatefulWidget {
  @override
  _TabNavState createState() => _TabNavState();
}

class _TabNavState extends State<TabNav> {

  final _defaultColor = Colors.grey;
  final _activeColor = Colors.blue;
  int _currentIndex = 0;
  final PageController _controller = PageController(
    initialPage: 0
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // 选中时是否显示 label
        showSelectedLabels: true,
          // 不选中时是否显示 label
        showUnselectedLabels: true,
        // item 固定不 浮动
        type: BottomNavigationBarType.fixed,
        // 选中时字体大小
        selectedFontSize: 12.0,
        // 不选中时字体大小
        unselectedFontSize: 12.0,
        // 选中时颜色
        selectedItemColor: _activeColor,
        // 不选中时颜色
        unselectedItemColor: _defaultColor,
        currentIndex: _currentIndex,
          onTap: (index){
            _controller.jumpToPage(index);
            setState(() {
              _currentIndex = index;
            });
          },
          items:[
            BottomNavigationBarItem(
              title: Text(
                  '首页'
              ),
                icon: Icon(Icons.home)
            ),
            BottomNavigationBarItem(
                title: Text(
                  '商城'
                ),
                icon: Icon(Icons.shop)
            ),
            BottomNavigationBarItem(
                title: Text(
                  '搜索'
                ),
                icon: Icon(Icons.search)
            ),
            BottomNavigationBarItem(
                title: Text(
                  '我的'
                ),
                icon: Icon(Icons.person)
            ),
          ]
//          items:[
//            BottomNavigationBarItem(
//              title: Text(
//                  '首页',
//                  style: TextStyle(color: _currentindex!=1?_defaultColor:_activeColor),
//              ),
//                icon: Icon(Icons.home,color: _defaultColor),
//                activeIcon: Icon(Icons.home,color: _activeColor)
//            ),
//            BottomNavigationBarItem(
//                title: Text(
//                  '商城',
//                  style: TextStyle(color: _currentindex!=2?_defaultColor:_activeColor),
//                ),
//                icon: Icon(Icons.shop,color: _defaultColor),
//                activeIcon: Icon(Icons.shop,color: _activeColor)
//            ),
//            BottomNavigationBarItem(
//                title: Text(
//                  '搜索',
//                  style: TextStyle(color: _currentindex!=3?_defaultColor:_activeColor),
//                ),
//                icon: Icon(Icons.search,color: _defaultColor),
//                activeIcon: Icon(Icons.search,color: _activeColor)
//            ),
//            BottomNavigationBarItem(
//                title: Text(
//                  '我的',
//                  style: TextStyle(color: _currentindex!=4?_defaultColor:_activeColor),
//                ),
//                icon: Icon(Icons.person,color: _defaultColor),
//                activeIcon: Icon(Icons.person,color: _activeColor)
//            ),
//          ]
      ),
      body: PageView(
        controller: _controller,
        children: <Widget>[
          HomePage(),
          ShopPage(),
          SearchPage(),
          UserPage()
        ],
      ),
    );
  }
}
