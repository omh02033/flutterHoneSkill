import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterlayout/themes/color_theme.dart';
import 'package:get/get.dart';

class SubTop extends StatelessWidget {
  const SubTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Get.back(),
            child: Row(
              children: [
                SvgPicture.asset('assets/prev.svg'),
                SizedBox(width: 15),
                Text('위치 선택', style: TextStyle(
                  color: subTitle,
                  fontWeight: FontWeight.w700,
                  fontSize: 24,
                ),)
              ],
            ),
          ),
          GestureDetector(
            child: SvgPicture.asset('assets/search.svg'),
          )
        ],
      )
    );
  }
}