import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MainTop extends StatelessWidget {
  const MainTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: GestureDetector(
              onTap: () {
                Get.offAndToNamed('/');
              },
              child: SvgPicture.asset(
                'assets/logo.svg',
                width: 31
              ),
            )
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: SvgPicture.asset(
              'assets/bell.svg',
              width: 30
            ),
          )
        ],
      ),
    );
  }
}