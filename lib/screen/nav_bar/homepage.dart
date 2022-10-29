import 'package:flutter_svg/flutter_svg.dart';
//import 'package:task_management/screen/nav_bar/bottom_nav.dart';
import 'package:task_management/widget/const.dart';
import 'package:task_management/widget/demo_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              height: 60,
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xff8E8E93),
                  ),
                  Text(
                    "Shahidullah Team",
                    style: myStyle(16, Color(0xffE4E4E6), FontWeight.w700),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Color(0xffE9E9EB),
                  ),
                  Spacer(),
                  SvgPicture.asset("assets/search.svg",
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Text(
                "Project Task",
                style: myStyle(16, Color(0xffE4E4E6), FontWeight.w700),
              ),
            ),
            Container(
              height: 60,
              padding: EdgeInsets.only(left: 16),
              width: double.infinity,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 12),
                      width: 130,
                      decoration: BoxDecoration(
                        color: Color(0xff292B3E),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 12),
                            width: 5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: myList[index].color,
                            ),
                            height: double.infinity,
                          ),
                          Expanded(
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  myList[index].totalStorage,
                                  style: myStyle(20, Color(0xffE4E4E6), FontWeight.w700),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  myList[index].type,
                                  style: myStyle(12, Color(0xffE4E4E6), FontWeight.w400),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "My Task",
                    style: myStyle(16, Color(0xffE4E4E6), FontWeight.w700),
                  ),
                  Text(
                    "See More",
                    style: myStyle(16, Color(0xffE4E4E6), FontWeight.w400),
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
                itemCount: myList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    padding: EdgeInsets.all(12),
                    height: 110,
                    decoration: BoxDecoration(
                      color: Color(0xff292B3E),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset("assets/checkbox.svg",
                            ),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "${myList[index].taskName}",
                              style: myStyle(16, Color(0xffE4E4E6), FontWeight.w400),
                            ),
                            Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: myList[index].color.withOpacity(0.3),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 5),
                              child: Text(
                                "${myList[index].title}",
                                style: myStyle(16, myList[index].color),
                              ),
                            )
                          ],
                        ),

                        SizedBox(height: 8,),

                        Row(

                          children: [
                            SizedBox(width: 40,),
                            Expanded(flex: 10,
                              child: Stack(
                                children: [
                                  Container(
                                    height: 5,
                                    decoration: BoxDecoration(
                                      color:  myList[index].color.withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                  ),

                                  LayoutBuilder(

                                    builder: (context,constraints){
                                      return Container(
                                        height: 8,
                                        width: constraints.maxWidth* myList[index].percentage/100,
                                        decoration: BoxDecoration(
                                          color:  myList[index].color ,
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                      );

                                    },
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 16,),
                            Text("5/20", style: myStyle(16, Color(0xffE4E4E6), FontWeight.w400),),
                          ],
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 40, top: 8),
                          child: Row(
                            children: [
                              SvgPicture.asset("assets/label.svg",
                              ),
                              SizedBox(width: 8,),
                              Text(
                                "2 Days Left",
                                style: myStyle(12, Color(0xffE9E9EB), FontWeight.w400),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
        //bottomNavigationBar: BottomNavBarDemo(),
      ),

    );
  }
}
