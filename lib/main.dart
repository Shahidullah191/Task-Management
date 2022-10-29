
import 'package:flutter/material.dart';
import 'package:task_management/pages/login_signup/login.dart';
import 'package:task_management/pages/login_signup/sign_up.dart';
import 'package:task_management/pages/login_success.dart';
import 'package:task_management/pages/on_boarding/on_boarding1.dart';
import 'package:task_management/pages/on_boarding/on_boarding2.dart';
import 'package:task_management/pages/on_boarding/on_boarding_3.dart';
import 'package:task_management/pages/splash.dart';
import 'package:task_management/pages/stepper/stepper1.dart';
import 'package:task_management/pages/stepper/stepper2.dart';
import 'package:task_management/pages/stepper/stepper3.dart';
import 'package:task_management/pages/stepper/stepper4.dart';
import 'package:task_management/pages/stepper/stepper5.dart';
import 'package:task_management/screen/nav_bar/bottom_nav.dart';
import 'package:task_management/screen/nav_bar/homepage.dart';
import 'package:task_management/screen/nav_bar/team_member.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xff191A22),
        primarySwatch: Colors.blue,
      ),
      home: TeamMember(),
    );
  }
}
