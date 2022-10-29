import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/pages/login_signup/login.dart';
import 'package:task_management/pages/on_boarding/on_boarding1.dart';
import 'package:task_management/widget/const.dart';
class Stepper4 extends StatelessWidget {
  Stepper4({Key? key}) : super(key: key);

  final GlobalKey<FormState> _fromkey = GlobalKey();

  TextEditingController passwordController = TextEditingController();

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
        title:  SvgPicture.asset("assets/stepper4_slider.svg",
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          key: _fromkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 20, bottom: 16),
                child: Center(
                  child: Text(
                    "Enter Your Code Team",
                    style: myStyle(16, Color(0xffF8F8F8), FontWeight.w700),
                  ),
                ),
              ),


              Text(
                "Code Team",
                style: myStyle(16, Color(0xff8A8A8E), FontWeight.w400),
              ),

              Padding(
                padding:  EdgeInsets.only(top: 16, bottom: 200),

                  child: CustomTextField(
                    Controller: passwordController,
                    inputType: TextInputType.text,
                    hintText: "e.g JXHJKH",
                    img: "assets/password.svg",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Password';
                      }
                      return null;
                    },
                  ),
              ),

              CustomeButton(
                onTap: (){},
                title: "Continue",
                isBlue: true,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
