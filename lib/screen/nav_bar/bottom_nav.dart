import 'package:task_management/pages/login_signup/login.dart';
import 'package:task_management/pages/on_boarding/on_boarding1.dart';
import 'package:task_management/screen/nav_bar/calender.dart';
import 'package:task_management/screen/nav_bar/homepage.dart';
import 'package:task_management/screen/nav_bar/profile.dart';
import 'package:task_management/screen/nav_bar/project.dart';
import 'package:task_management/widget/const.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBarDemo extends StatefulWidget {
  const BottomNavBarDemo({Key? key}) : super(key: key);

  @override
  _BottomNavBarDemoState createState() => _BottomNavBarDemoState();
}

class _BottomNavBarDemoState extends State<BottomNavBarDemo> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
 int selectedItem=2;


  PageController pageController = PageController(initialPage: 0);

  List<Widget> pages = [HomePage(),Calender(),Project(),Profile()];

  void onPageChange(int index) {
    setState(() {
      selectedItem = index;
    });
  }

  final GlobalKey<FormState> _fromkey = GlobalKey();

  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: scaffoldKey,
     // drawer: DrawerWidget(),

      floatingActionButton: FloatingActionButton(
        isExtended: true,

        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,size: 30,
          color: Colors.white,
        ),
        onPressed: () {
          showModalBottomSheet(
              //isScrollControlled: true,
              context: context, builder: (context){
            return Container(
              key: _fromkey,
              padding: EdgeInsets.symmetric(horizontal: 16),
              color: Color(0xff292B3E),
              height: 800,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 16,),
                  Row(
                    children: [
                      Text(
                        "Add New Project",
                        style: myStyle(16, Color(0xffF8F8F8), FontWeight.w700),
                      ),
                      Spacer(),
                      SvgPicture.asset("assets/cross.svg",
                        width: 10,
                        color: Color(0xff8A8A8E),
                      ),
                    ],
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: 15, bottom: 15),
                    child: Text(
                      "Project Name",
                      style: myStyle(16, Color(0xff8A8A8E), FontWeight.w400),
                    ),
                  ),

                  CustomTextField(
                    Controller: nameController,
                    inputType: TextInputType.text,
                    hintText: "Enter Project Name",
                    img: "assets/suitcase.svg",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Name';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),
                    child: Text(
                      "Assigned to",
                      style: myStyle(16, Color(0xff8A8A8E), FontWeight.w400),
                    ),
                  ),

                  CustomTextField(
                    Controller: nameController,
                    inputType: TextInputType.text,
                    hintText: "Select Your Team",
                    img: "assets/person.svg",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Name';
                      }
                      return null;
                    },
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 15, bottom: 15),                    child: Row(
                      children: [

                        SvgPicture.asset("assets/link.svg",
                          color: Color(0xff8A8A8E),
                        ),
                        SizedBox(width: 16,),
                        Text(
                          "Attched Files",
                          style: myStyle(16, Color(0xffF8F8F8), FontWeight.w700),
                        ),
                      ],
                    ),
                  ),

                  CustomeButton(
                    onTap: (){},
                    title: "Save",
                    isBlue: true,
                  ),


                ],
              ),
            );
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: onPageChange,
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color(0xff292B3E),
        child: Padding(
          padding: EdgeInsets.only(bottom: 8, top: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    selectedItem = 0;
                    pageController!.jumpToPage(0);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      "assets/mytask.svg",
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "MyTask",
                      style: myStyle(  14,Colors.white70),
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    selectedItem = 1;
                    pageController!.jumpToPage(1);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      "assets/calender.svg",
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Calender",
                      style: myStyle(  14,Colors.white70),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 22,
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    selectedItem = 2;
                    pageController!.jumpToPage(2);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      "assets/project.svg",
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Project",
                      style: myStyle(  14,Colors.white70),
                    )
                  ],
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    selectedItem = 3;
                    pageController!.jumpToPage(3);
                  });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SvgPicture.asset(
                      "assets/profile.svg",
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      "Profile",
                      style: myStyle( 14,Colors.white70),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
