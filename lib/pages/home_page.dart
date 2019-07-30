import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const APP_BAR_SCROLL_OFFSET = 100;
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final SwiperControl _swiperControl = SwiperControl();
  double _appBarOpacity = 0;
  List _imageUrls = [
    'https://img3.mukewang.com/szimg/5ac2dfe100014a9005400300.jpg',
    'https://img1.mukewang.com/szimg/5cda946c0826e4c006000338.jpg',
    'https://img3.mukewang.com/szimg/5d08d0b308c9749706000338.jpg',
    'https://img3.mukewang.com/szimg/59b8a486000107fb05400300.jpg'
  ];

  _onScroll(offset){
    double alpha = offset/APP_BAR_SCROLL_OFFSET;
    if(alpha<0){
      alpha = 0;
    } else if(alpha > 1){
      alpha = 1;
    }
    setState(() {
      _appBarOpacity = alpha;
    });
    print(alpha);

  }
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
        body: Stack(
      children: <Widget>[
        MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: NotificationListener(
              onNotification: (scrollNotification){
                if(scrollNotification is ScrollUpdateNotification && scrollNotification.depth==0){
                  _onScroll(scrollNotification.metrics.pixels);
                }
              },
                child: ListView(
              children: <Widget>[
                Container(
                  height: 200.0,
                  child: new Swiper(
                    itemCount: _imageUrls.length,
                    autoplay: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Image.network(
                        _imageUrls[index],
                        fit: BoxFit.fill,
                      );
                    },
                    pagination: SwiperPagination(),
                    control: _swiperControl,
                  ),
                ),
                Container(
                  height: 800.0,
                  child: Text('空白',style: TextStyle(fontFamily: 'my',fontSize: 20.0)),
                )
              ],
            ))),
        Opacity(
          opacity: _appBarOpacity,
          child: Container(
            height: 50.0,
            width: ScreenUtil.screenWidth,
            decoration: BoxDecoration(color: Colors.white),
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Center(child: Text('首页'),),
            ),
          ),
        )
      ],
    ));
  }
}
