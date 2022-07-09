import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterlayout/controllers/main_screen_controller.dart';
import 'package:flutterlayout/screens/widgets/box.dart';
import 'package:flutterlayout/screens/widgets/main_top.dart';
import 'package:flutterlayout/themes/color_theme.dart';

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          MainTop(),
          Box(
            title: '나의 위치',
            nPage: '/myLocation',
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset('assets/class.svg', color: magenta,),
                      Text('교실', style: TextStyle(
                        color: magenta,
                        fontWeight: FontWeight.w700,
                      )),
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset('assets/bathroom.svg', color: disabled,),
                      Text('화장실', style: TextStyle(
                        color: disabled,
                        fontWeight: FontWeight.w700,
                      )),
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset('assets/class.svg', color: disabled),
                      Text('IT 프로..', style: TextStyle(
                        color: disabled,
                        fontWeight: FontWeight.w700,
                      )),
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset('assets/club.svg', color: disabled),
                      Text('동아리', style: TextStyle(
                        color: disabled,
                        fontWeight: FontWeight.w700,
                      )),
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset('assets/add.svg', color: disabled),
                      Text('추가', style: TextStyle(
                        color: disabled,
                        fontWeight: FontWeight.w700,
                      )),
                    ],
                  ),
                ],
              ),
              Row(
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
              )
            ],
          ),
          Box(
            title: '오늘의 급식',
            nFuntion: () {
              MainScreenController.to.changeIdx(1);
            },
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('아침', style: TextStyle(
                          color: magenta,
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                        )),
                        SizedBox(height: 5),
                        SvgPicture.asset('assets/ellipse.svg')
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('점심', style: TextStyle(
                          color: disabled,
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                        )),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                  GestureDetector(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('저녁', style: TextStyle(
                          color: disabled,
                          fontSize: 18,
                          fontWeight: FontWeight.w700
                        )),
                        SizedBox(height: 10),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                '현미밥 | 얼큰김칫국 |\n토마토달걀볶음 | 호박버섯볶음 | 깍두기 | 베이컨 | \n완제김 | 스트링치즈 | 모닝빵미니버거 | 포도주스 |',
                style: TextStyle(
                  color: subTitle,
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('우리 반의 아침 급식 시간은  ', style: TextStyle(
                    color: Color(0xff000000),
                    fontWeight: FontWeight.w700,
                    fontSize: 14
                  ),),
                  Text('오전 7:10 ', style: TextStyle(
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
              )
            ],
          )
        ],
      ),
    );
  }
}