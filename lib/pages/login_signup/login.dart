import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/pages/on_boarding/on_boarding1.dart';
import 'package:task_management/widget/const.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {

  final GlobalKey<FormState> _fromkey = GlobalKey();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                  title: "Login",
                  isBlue: true,
                ),
              ),

              Center(
                child: Text(
                  "Forgot Your Password",
                  style: myStyle(16, Color(0xffF8F8F8), FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
   CustomTextField({
    Key? key,
    this.hintText, required this.Controller, this.img, this.inputType, this.validator
  }) : super(key: key);

  final TextEditingController Controller;

  final TextInputType? inputType;
  final String? hintText;
  final String? img;
  final dynamic validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        style: myStyle(17, Color(0xff8A8A8E), FontWeight.w400),

      keyboardType: inputType,
      controller: Controller,
      validator: validator,

      decoration: InputDecoration(
        prefixIcon: SvgPicture.asset(
          img!,
          height: 16,
          width: 20,
          fit: BoxFit.scaleDown,
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28.0),
          borderSide: BorderSide(
            color: Color(0xff8A8A8E),
            width: 2.0,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(28.0),
          borderSide: BorderSide(
            color: Color(0xff8A8A8E),
            width: 2.0,
          ),
        ),
        hintText: hintText,
        hintStyle: myStyle(16, Color(0xff8A8A8E), FontWeight.w400),

      ),
    );
  }
}
