import 'dart:math';

import 'package:task_management/widget/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Transform.rotate(
              angle: pi / 5,
              child: Container(
                decoration: BoxDecoration(
                    color: Color(0xff8E8E93),
                    borderRadius: BorderRadius.circular(40)),
                height: 395,
                width: 480,
              ),
            ),
            top: -184,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Update Progress \nYour Work for The Team",
                  style: myStyle(36, Color(0xffE4E4E6), FontWeight.w700),
                ),
                SizedBox(
                  height: 32,
                ),
                SvgPicture.asset(
                  "assets/slider1.svg",
                ),
                SizedBox(
                  height: 36,
                ),
                CustomeButton(
                  onTap: (){},
                  title: "Sign up",
                  isBlue: true,
                ),   SizedBox(
                  height: 16,
                ),CustomeButton(
                  onTap: (){},
                  title: "Log in",
                  isBlue: false,
                ),
                SizedBox(
                  height: 16,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomeButton extends StatelessWidget {
    CustomeButton({
    super.key,this.title,this.onTap,this.isBlue
  });
String ?title;
VoidCallback? onTap;
  bool ?isBlue ;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: double.infinity,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color:isBlue==true? Colors.transparent: Colors.white
        ),
          borderRadius: BorderRadius.circular(28)),
      padding: EdgeInsets.symmetric(vertical: 16),
      onPressed:onTap,
      child: Text(
       " $title",
        style: myStyle(17, Colors.white, FontWeight.w600),
      ),
      color:isBlue==true? Colors.blueAccent :Colors.transparent,
    );
  }
}
