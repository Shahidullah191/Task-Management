import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/pages/on_boarding/on_boarding1.dart';
import 'package:task_management/widget/const.dart';
class Stepper2 extends StatelessWidget {
  const Stepper2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff191A22),
        leading: IconButton(onPressed: (){},
          icon: SvgPicture.asset("assets/backword.svg",
            height: 13.41,
            width: 13.41,
          ),
        ),
        title:  SvgPicture.asset("assets/stepper2_slider.svg",
        ),
        centerTitle: true,
      ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [

            Padding(
              padding:  EdgeInsets.only(top: 20),
              child: CustomeButton(
                onTap: (){},
                title: "Create Your Own Team",
                isBlue: true,
              ),
            ),

            Padding(
              padding:  EdgeInsets.symmetric(vertical: 24),
              child: Text(
                "Or",
                style: myStyle(16, Color(0xffF8F8F8), FontWeight.w700),
              ),
            ),

            CustomeButton(
              onTap: (){},
              title: "Join Team",
              isBlue: false,
            ),

          ],
        ),
      ),
    );
  }
}
