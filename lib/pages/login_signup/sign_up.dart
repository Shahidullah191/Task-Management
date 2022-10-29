import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/pages/login_signup/login.dart';
import 'package:task_management/pages/on_boarding/on_boarding1.dart';
import 'package:task_management/widget/const.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

  final GlobalKey<FormState> _fromkey = GlobalKey();

  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Color(0xff191A22),
        leading: IconButton(onPressed: (){},
          icon: SvgPicture.asset("assets/cross.svg",
            height: 13.41,
            width: 13.41,
          ),
        ),
        actions: [
          Container(

            alignment: Alignment.center,
            child: Text(
              "Sign Up",
              style: myStyle(16, Color(0xffE4E4E6), FontWeight.w700),
            ),
          ),
          SizedBox(width: 17,),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 16, right: 16),
          key: _fromkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Your Email Address",
                style: myStyle(16, Color(0xff8A8A8E), FontWeight.w400),
              ),

              Padding(
                padding:  EdgeInsets.symmetric(vertical: 16),
                child: CustomTextField(
                  Controller: emailController,
                  inputType: TextInputType.emailAddress,
                  hintText: "Enter your email address",
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
