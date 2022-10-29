import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/pages/login_signup/login.dart';
import 'package:task_management/pages/on_boarding/on_boarding1.dart';
import 'package:task_management/widget/const.dart';
class Stepper5 extends StatelessWidget {
  Stepper5({Key? key}) : super(key: key);

  final GlobalKey<FormState> _fromkey = GlobalKey();

  TextEditingController emailController = TextEditingController();

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
        title:  SvgPicture.asset("assets/stepper5_slider.svg",
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
                    "Invite Your Team Member",
                    style: myStyle(16, Color(0xffF8F8F8), FontWeight.w700),
                  ),
                ),
              ),


              Text(
                "Email Member",
                style: myStyle(16, Color(0xff8A8A8E), FontWeight.w400),
              ),

              Padding(
                padding:  EdgeInsets.only(top: 16, bottom: 200),

                child: CustomTextField(
                  Controller: emailController,
                  inputType: TextInputType.text,
                  hintText: "Type an email addrress",
                  img: "assets/email.svg",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Email';
                    }
                    if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                        .hasMatch(value)) {
                      return 'Please a valid Email';
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
