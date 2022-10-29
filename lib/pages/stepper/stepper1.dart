import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/pages/login_signup/login.dart';
import 'package:task_management/pages/on_boarding/on_boarding1.dart';
import 'package:task_management/widget/const.dart';

class Stepper1 extends StatefulWidget {
  const Stepper1({Key? key}) : super(key: key);

  @override
  State<Stepper1> createState() => _Stepper1State();
}

class _Stepper1State extends State<Stepper1> {

  final GlobalKey<FormState> _fromkey = GlobalKey();

  TextEditingController nameController = TextEditingController();
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
        title:  SvgPicture.asset("assets/stepper1_slider.svg",
            ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          key: _fromkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Padding(
                padding:  EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    "Complete Your Profiles",
                    style: myStyle(16, Color(0xffF8F8F8), FontWeight.w700),
                  ),
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(top: 16, bottom: 20),
                child: Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Color(0xff8E8E93),
                    child: SvgPicture.asset("assets/camera.svg",
                    ),
                  ),
                ),
              ),

              Text(
                "Your Full Name",
                style: myStyle(16, Color(0xff8A8A8E), FontWeight.w400),
              ),

              Padding(
                padding:  EdgeInsets.symmetric(vertical: 16),
                child: CustomTextField(
                  Controller: nameController,
                  inputType: TextInputType.text,
                  hintText: "Enter your full name",
                  img: "assets/profile.svg",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Name';
                    }
                    return null;
                  },
                ),
              ),

              Text(
                "Your Password",
                style: myStyle(16, Color(0xff8A8A8E), FontWeight.w400),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: CustomTextField(
                  Controller: passwordController,
                  inputType: TextInputType.text,
                  hintText: "Enter your password",
                  img: "assets/password.svg",
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Password';
                    }
                    return null;
                  },
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: CustomeButton(
                  onTap: (){},
                  title: "Continue",
                  isBlue: true,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
