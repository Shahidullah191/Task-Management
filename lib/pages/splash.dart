import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/pages/on_boarding/on_boarding1.dart';
import 'package:task_management/widget/const.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(top: 220),
              alignment: Alignment.center,
              height: 96,
              width: 96,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xff292B3E),
              ),
              child: SvgPicture.asset(
                "assets/group.svg",
              ),
            ),
            SizedBox(height: 32,),
            Text(
              "RANCANG",
              style: myStyle(36, Color(0xffE4E4E6), FontWeight.w700),
            ),
            SizedBox(height: 8,),
            Text(
              "Your Personal Task Manager",
              style: myStyle(17, Color(0xffE9E9EB), FontWeight.w400),
            ),

            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, bottom: 30, top: 150),
              child: MaterialButton(
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28)),
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 17),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>OnBoarding1()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Getting Started",
                        style: myStyle(17, Colors.white, FontWeight.w600),
                      ),
                      Icon(Icons.arrow_forward_ios, color: Colors.white,),
                    ],
                  ),
                  color: Color(0xff246BFD)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
