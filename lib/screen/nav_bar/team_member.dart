import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_management/widget/const.dart';

class TeamMember extends StatelessWidget {
  const TeamMember({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.add),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff191A22),
        leading: IconButton(onPressed: (){},
          icon: SvgPicture.asset("assets/backword.svg",
            height: 13.41,
            width: 13.41,
          ),
        ),
        title:  Text(
          "Project Name",
          style: myStyle(16, Color(0xffE4E4E6), FontWeight.w700),
        ),
        centerTitle: true,
      ),

      body: Container(
        padding: EdgeInsets.only(top: 16, left: 16, right: 16),
        child: Column(
          children: [
            Expanded(
              flex: 6,
                child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                        child: Card(
                          color: Color(0xff292B3E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15, top: 15),
                                      child: SvgPicture.asset("assets/circlegreen.svg",
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: Icon(Icons.more_vert, color: Color(0xffE4E4E6),),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Text(
                                    "Shahidullah",
                                    style: myStyle(16, Color(0xffE4E4E6), FontWeight.w700),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, bottom: 15),
                                  child: Text(
                                    "pharno@email.com",
                                    style: myStyle(12, Color(0xffE4E4E6), FontWeight.w700),
                                  ),
                                ),

                              ],
                            ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Card(
                          color: Color(0xff292B3E),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15, top: 15),
                                    child: SvgPicture.asset("assets/circlegreen.svg",
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Icon(Icons.more_vert, color: Color(0xffE4E4E6),),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  "Shahidullah",
                                  style: myStyle(16, Color(0xffE4E4E6), FontWeight.w700),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15, bottom: 15),
                                child: Text(
                                  "pharno@email.com",
                                  style: myStyle(12, Color(0xffE4E4E6), FontWeight.w700),
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
            ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Card(
                        color: Color(0xff292B3E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, top: 15),
                                  child: SvgPicture.asset("assets/circlegreen.svg",
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Icon(Icons.more_vert, color: Color(0xffE4E4E6),),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Shahidullah",
                                style: myStyle(16, Color(0xffE4E4E6), FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, bottom: 15),
                              child: Text(
                                "pharno@email.com",
                                style: myStyle(12, Color(0xffE4E4E6), FontWeight.w700),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Card(
                        color: Color(0xff292B3E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, top: 15),
                                  child: SvgPicture.asset("assets/circlegreen.svg",
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Icon(Icons.more_vert, color: Color(0xffE4E4E6),),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Shahidullah",
                                style: myStyle(16, Color(0xffE4E4E6), FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, bottom: 15),
                              child: Text(
                                "pharno@email.com",
                                style: myStyle(12, Color(0xffE4E4E6), FontWeight.w700),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Card(
                        color: Color(0xff292B3E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, top: 15),
                                  child: SvgPicture.asset("assets/circlegreen.svg",
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Icon(Icons.more_vert, color: Color(0xffE4E4E6),),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Shahidullah",
                                style: myStyle(16, Color(0xffE4E4E6), FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, bottom: 15),
                              child: Text(
                                "pharno@email.com",
                                style: myStyle(12, Color(0xffE4E4E6), FontWeight.w700),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Card(
                        color: Color(0xff292B3E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, top: 15),
                                  child: SvgPicture.asset("assets/circlegreen.svg",
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Icon(Icons.more_vert, color: Color(0xffE4E4E6),),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Shahidullah",
                                style: myStyle(16, Color(0xffE4E4E6), FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, bottom: 15),
                              child: Text(
                                "pharno@email.com",
                                style: myStyle(12, Color(0xffE4E4E6), FontWeight.w700),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Card(
                        color: Color(0xff292B3E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, top: 15),
                                  child: SvgPicture.asset("assets/circlegreen.svg",
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Icon(Icons.more_vert, color: Color(0xffE4E4E6),),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Shahidullah",
                                style: myStyle(16, Color(0xffE4E4E6), FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, bottom: 15),
                              child: Text(
                                "pharno@email.com",
                                style: myStyle(12, Color(0xffE4E4E6), FontWeight.w700),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Card(
                        color: Color(0xff292B3E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15, top: 15),
                                  child: SvgPicture.asset("assets/circlegreen.svg",
                                  ),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Icon(Icons.more_vert, color: Color(0xffE4E4E6),),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                "Shahidullah",
                                style: myStyle(16, Color(0xffE4E4E6), FontWeight.w700),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15, bottom: 15),
                              child: Text(
                                "pharno@email.com",
                                style: myStyle(12, Color(0xffE4E4E6), FontWeight.w700),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
              ),
            ),
          ],
        ),
      ),

    );
  }
}
