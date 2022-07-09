import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterlayout/controllers/main_screen_controller.dart';
import 'package:flutterlayout/screens/add.dart';
import 'package:flutterlayout/screens/application.dart';
import 'package:flutterlayout/screens/calender.dart';
import 'package:flutterlayout/screens/main.dart';
import 'package:flutterlayout/screens/meal.dart';
import 'package:flutterlayout/themes/color_theme.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> pages = [
    Main(),
    MealPage(),
    CalenderPage(),
    ApplicationPage(),
    AddPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainScreenController>(
       builder:(controller) => Scaffold(
        body: SafeArea(
          child: pages[MainScreenController.to.selectNavigationBarIdx]
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          child: BottomNavigationBar(
            onTap: (idx) => MainScreenController.to.changeIdx(idx),
            selectedItemColor: magenta,
            unselectedItemColor: disabled,
            showUnselectedLabels: true,
            currentIndex: MainScreenController.to.selectNavigationBarIdx,
            unselectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w700
            ),
            selectedLabelStyle: TextStyle(
              fontWeight: FontWeight.w700
            ),
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/main.svg',
                  color: MainScreenController.to.selectNavigationBarIdx == 0
                  ? magenta
                  : disabled
                ),
                label: '메인'
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/meal.svg',
                  color: MainScreenController.to.selectNavigationBarIdx == 1
                  ? magenta
                  : disabled
                ),
                label: '급식'
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/calender.svg',
                  color: MainScreenController.to.selectNavigationBarIdx == 2
                  ? magenta
                  : disabled
                ),
                label: '일정'
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/application.svg',
                  color: MainScreenController.to.selectNavigationBarIdx == 3
                  ? magenta
                  : disabled
                ),
                label: '신청'
              ),
              BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  'assets/info.svg',
                  color: MainScreenController.to.selectNavigationBarIdx == 4
                  ? magenta
                  : disabled
                ),
                label: '내정보'
              ),
            ],
          ),
        )
      ),
    );
  }
}