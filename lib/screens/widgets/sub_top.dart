import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterlayout/themes/color_theme.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class SubTop extends StatefulWidget {
  String title;
  SubTop({
    Key? key,
    required this.title
  }) : super(key: key);

  @override
  State<SubTop> createState() => _SubTopState();
}

class _SubTopState extends State<SubTop> {
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
                Text(widget.title, style: TextStyle(
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