import 'dart:math';

import 'package:task_management/pages/on_boarding/on_boarding1.dart';
import 'package:task_management/widget/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoarding3 extends StatelessWidget {
  const OnBoarding3({Key? key}) : super(key: key);

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
                  "Get Notified when \nyou Get a New Assignment",
                  style: myStyle(36, Color(0xffE4E4E6), FontWeight.w700),
                ),
                SizedBox(
                  height: 32,
                ),
                SvgPicture.asset(
                  "assets/slider3.svg",
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