// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, division_optimization

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:traing_app_wth_getx/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List info = [];

  _initData() {
    DefaultAssetBundle.of(context)
        .loadString("json/info.json")
        .then((value) => {info = json.decode(value)});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initData();
    // print(info);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homePageBackground,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
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
                height: 20,
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
                      color: AppColor.homePageDetail,
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
                height: 160,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      AppColor.gradientFirst.withOpacity(0.8),
                      AppColor.gradientSecond.withOpacity(0.9)
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
                      color: AppColor.gradientSecond.withOpacity(0.2),
                    ),
                  ],
                ),
                child: Container(
                  padding: EdgeInsets.only(left: 15, top: 15, right: 20),
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
                            fontSize: 20,
                            color: AppColor.homePageContainerTextSmall),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "and Glutes Workout",
                        style: TextStyle(
                            fontSize: 20,
                            color: AppColor.homePageContainerTextSmall),
                      ),
                      SizedBox(
                        height: 5,
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
                                    color: AppColor.homePageContainerTextSmall),
                              ),
                            ],
                          ),
                          Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                boxShadow: [
                                  BoxShadow(
                                    color: AppColor.gradientFirst,
                                    blurRadius: 10,
                                    offset: Offset(4, 8),
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.play_circle_fill,
                                size: 50,
                                color: Colors.white,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                          // color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/card.jpg"),
                            fit: BoxFit.fill,
                          ),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 40,
                                offset: Offset(8, 10),
                                color:
                                    AppColor.gradientSecond.withOpacity(0.3)),
                            BoxShadow(
                                blurRadius: 10,
                                offset: Offset(-1, -5),
                                color:
                                    AppColor.gradientSecond.withOpacity(0.3)),
                          ]),
                    ),
                    Container(
                      height: 110,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.only(right: 200, bottom: 40),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/figure.png"),
                          // fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 150, top: 40),
                      width: double.maxFinite,
                      height: 100,
                      // color: Colors.redAccent.withOpacity(0.3),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "You are doing great",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColor.homePageDetail),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          RichText(
                              text: TextSpan(
                                  text: "Keep it up\n",
                                  style: TextStyle(
                                      color: AppColor.homePagePlanColor,
                                      fontSize: 16),
                                  children: [
                                TextSpan(text: "stick to your plan"),
                              ]))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "Area of foucs",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: AppColor.homePageTitle),
                  )
                ],
              ),
              // SizedBox(
              //   height: 25,
              // ),
              Expanded(
                child: OverflowBox(
                  maxWidth: MediaQuery.of(context).size.width,
                  child: MediaQuery.removeViewPadding(
                    removeTop: true,
                    context: context,
                    child: ListView.builder(
                        // itemCount: (info.length.toDouble()/2).toInt(),//2
                        itemCount: 3,
                        itemBuilder: (_, i) {
                          int a = 2 * i; //0, 2,
                          int b = 2 * i + 1; //1, 3
                          int c = b;
                          //   if(info.length.isOdd&&(i+1)==info.length){
                          //       length;
                          //      b=c;
                          //  }
                          return Row(
                            children: [
                              if (c != 0)
                                Container(
                                  width:
                                      (MediaQuery.of(context).size.width - 90) /
                                          2,
                                  height: 170,
                                  margin: EdgeInsets.only(
                                      left: 30, bottom: 15, top: 15),
                                  padding: EdgeInsets.only(bottom: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15),
                                      image: DecorationImage(
                                          image: AssetImage(info[b]['img'])),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 3,
                                            offset: Offset(5, 5),
                                            color: AppColor.gradientSecond
                                                .withOpacity(0.1)),
                                        BoxShadow(
                                            blurRadius: 3,
                                            offset: Offset(-5, -5),
                                            color: AppColor.gradientSecond
                                                .withOpacity(0.1))
                                      ]),
                                  child: Center(
                                      child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      info[b]["title"],
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: AppColor.homePageDetail,
                                      ),
                                    ),
                                  )),
                                ),
                              Container(
                                width:
                                    (MediaQuery.of(context).size.width - 90) /
                                        2,
                                height: 170,
                                margin: EdgeInsets.only(
                                    left: 30, bottom: 15, top: 15),
                                padding: EdgeInsets.only(bottom: 5),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(
                                        image: AssetImage(info[a]['img'])),
                                    boxShadow: [
                                      BoxShadow(
                                          blurRadius: 3,
                                          offset: Offset(5, 5),
                                          color: AppColor.gradientSecond
                                              .withOpacity(0.1)),
                                      BoxShadow(
                                          blurRadius: 3,
                                          offset: Offset(-5, -5),
                                          color: AppColor.gradientSecond
                                              .withOpacity(0.1))
                                    ]),
                                child: Center(
                                    child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Text(
                                    info[a]["title"],
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: AppColor.homePageDetail),
                                  ),
                                )),
                              ),
                            ],
                          );
                        }),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}