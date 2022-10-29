import 'package:flutter/material.dart';
import 'package:task_management/pages/on_boarding/on_boarding1.dart';
import 'package:task_management/widget/const.dart';
class LogInSuccess extends StatelessWidget {
  const LogInSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xff8E8E93),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 24, bottom: 8),
                child: Text(
                  "Congratulations!",
                  style: myStyle(24, Color(0xffF8F8F8), FontWeight.w700),
                ),
              ),

              Center(
                child: Text(
                  "Parto team was created successfully,",
                  style: myStyle(16, Color(0xffE9E9EB), FontWeight.w400),
                ),
              ),
              Center(
                child: Text(
                  "create your latest project so you can work",
                  style: myStyle(16, Color(0xffE9E9EB), FontWeight.w400),
                ),
              ),
              Center(
                child: Text(
                  "with your team.!",
                  style: myStyle(16, Color(0xffE9E9EB), FontWeight.w400),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 32),
                child: CustomeButton(
                  onTap: (){},
                  title: "Next",
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

