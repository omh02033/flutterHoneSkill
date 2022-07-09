import 'package:flutter/material.dart';
import 'package:flutterlayout/screens/widgets/sub_top.dart';
import 'package:flutterlayout/themes/color_theme.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MyLocationPage extends StatelessWidget {
  const MyLocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SlidingUpPanel(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        collapsed: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('나의 위치는 현재 ', style: TextStyle(
              color: Color(0xff000000),
              fontWeight: FontWeight.w700,
              fontSize: 14
            ),),
            Text('3학년 1반에 ', style: TextStyle(
              color: magenta,
              fontWeight: FontWeight.w700,
              fontSize: 14
            ),),
            Text('입니다', style: TextStyle(
              color: Color(0xff000000),
              fontWeight: FontWeight.w700,
              fontSize: 14
            ),),
          ],
        ),
        panel: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('나의 위치는 현재 ', style: TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w700,
                fontSize: 14
              ),),
              Text('3학년 1반에 ', style: TextStyle(
                color: magenta,
                fontWeight: FontWeight.w700,
                fontSize: 14
              ),),
              Text('입니다', style: TextStyle(
                color: Color(0xff000000),
                fontWeight: FontWeight.w700,
                fontSize: 14
              ),),
            ],
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SubTop(title: '위치 선택'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}