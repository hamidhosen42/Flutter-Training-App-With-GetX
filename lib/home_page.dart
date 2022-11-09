// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:traing_app_wth_getx/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.homePageBackground,
        body: Container(
          child: Padding(
            padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Training",
                      style: TextStyle(
                          fontSize: 30,
                          color: AppColor.homePageTitle,
                          fontWeight: FontWeight.w700),
                    ),
                    Expanded(child: Container()),
                    Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                      color: AppColor.homePageIcons,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(Icons.calendar_today_outlined,
                        size: 20, color: AppColor.homePageIcons),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.arrow_forward_ios,
                        size: 20, color: AppColor.homePageIcons),
                    // SizedBox(
                    //   width: 20,
                    // ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      "Training",
                      style: TextStyle(
                          fontSize: 20,
                          color: AppColor.homePageSubtitle,
                          fontWeight: FontWeight.w700),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "Details",
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColor.homePageDetails,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 20,
                      color: AppColor.homePageIcons,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        AppColor.gradienFirst.withOpacity(0.8),
                        AppColor.gradienSecond.withOpacity(0.9)
                      ],
                      begin: Alignment.bottomLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                      topRight: Radius.circular(80),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(5, 10),
                        blurRadius: 10,
                        color: AppColor.gradienSecond.withOpacity(0.2),
                      ),
                    ],
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Next workout",
                          style: TextStyle(
                              fontSize: 16,
                              color: AppColor.homePageContainerTextSmall),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Legs Toning",
                          style: TextStyle(
                              fontSize: 25,
                              color: AppColor.homePageContainerTextSmall),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "and Glutes Workout",
                          style: TextStyle(
                              fontSize: 25,
                              color: AppColor.homePageContainerTextSmall),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.timer,
                                  color: AppColor.homePageContainerTextSmall,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "60 min",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color:
                                          AppColor.homePageContainerTextSmall),
                                ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColor.gradienFirst,
                                    blurRadius: 10,
                                    offset: Offset(4,8),
                                  ),
                                ],
                              ),
                                child: Icon(
                              Icons.play_circle_fill,
                              size: 60,
                              color: Colors.white,
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
