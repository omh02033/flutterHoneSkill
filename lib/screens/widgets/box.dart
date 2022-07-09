import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterlayout/controllers/main_screen_controller.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class Box extends StatefulWidget {
  late List<Widget> children;
  final String title;
  late String? nPage;
  Function? nFuntion;

  Box({
    Key? key,
    required this.children,
    required this.title,
    this.nPage,
    this.nFuntion
  }) : super(key: key);

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 25, 30, 25),
      margin: EdgeInsets.only(
        top: 10,
        bottom: 10
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color(0xffffffff),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              if(widget.nPage != null) {
                Get.toNamed(widget.nPage as String);
              } else if(widget.nFuntion != null) {
                widget.nFuntion!();
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.title, style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700
                ),),
                if(widget.nPage != null || widget.nFuntion != null) SvgPicture.asset('assets/next.svg')
              ],
            ),
          ),
          ...widget.children.map((e) {
            return Column(
              children: [
                SizedBox(
                  height: 25
                ),
                e,
              ],
            );
          })
        ],
      ),
    );
  }
}