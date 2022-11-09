// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traing_app_wth_getx/colors.dart';
import 'package:traing_app_wth_getx/home_page.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({super.key});

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List videoInfo = [];

  _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/videoinfo.json")
        .then((value) => {videoInfo = json.decode(value)});
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
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            AppColor.gradientFirst.withOpacity(0.9),
            AppColor.gradientSecond,
          ],
          begin: FractionalOffset(0.0, 0.4),
          end: Alignment.topRight,
        )),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 50, left: 25, right: 25),
              width: MediaQuery.of(context).size.width,
              height: 250,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Get.to(() => HomePage());
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 20,
                          color: AppColor.secondPageIconColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      Icon(
                        Icons.info_outline,
                        size: 20,
                        color: AppColor.secondPageIconColor,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Legs Toning",
                    style: TextStyle(
                      fontSize: 25,
                      color: AppColor.secondPageTitleColor,
                    ),
                  ),
                  Text(
                    "and Glutes Workout",
                    style: TextStyle(
                      fontSize: 25,
                      color: AppColor.secondPageTitleColor,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  AppColor.secondPageContainerGradient1stColor,
                                  AppColor.secondPageContainerGradient2ndColor
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.timer,
                              color: AppColor.secondPageIconColor,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "60 min",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppColor.secondPageIconColor),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        width: 250,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors: [
                                  AppColor.secondPageContainerGradient1stColor,
                                  AppColor.secondPageContainerGradient2ndColor
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.handyman_outlined,
                              color: AppColor.homePageContainerTextSmall,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Ressistent band, kettlebell",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: AppColor.homePageContainerTextSmall),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                // height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Text(
                          "Circuit 1 : Legs Toning",
                          style: TextStyle(
                            fontSize: 20,
                            color: AppColor.circuitsColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Expanded(child: Container()),
                        Row(
                          children: [
                            Icon(
                              Icons.loop,
                              color: AppColor.loopColor,
                              size: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "3 sets",
                              style: TextStyle(
                                fontSize: 15,
                                color: AppColor.setsColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 8),
                      child: ListView.builder(
                          itemCount: videoInfo.length,
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {
                                debugPrint(index.toString());
                              },
                              child: _listView(index),
                            );
                          }),
                    )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _listView(int index) {
    return Container(
      height: 135,
      // color: Colors.red,
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(videoInfo[index]['thumbnail']),
                      fit: BoxFit.cover,
                    )),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    videoInfo[index]['title'],
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    videoInfo[index]['time'],
                    style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            children: [
              Container(
                width: 80,
                height: 20,
                decoration: BoxDecoration(
                  color: Color(0xFFeaeefc),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    "15s rest",
                    style: TextStyle(fontSize: 16, color: Color(0xFF839fed)),
                  ),
                ),
              ),
              Row(
                children: [
                  for (int i = 0; i < 70; i++)
                    i.isEven
                        ? Container(
                            width: 3,
                            height: 1,
                            decoration: BoxDecoration(
                              color: Color(0xFF839fed),
                              borderRadius: BorderRadius.circular(2),
                            ),
                          )
                        : Container(
                            width: 3,
                            height: 1,
                            color: Colors.white,
                          ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}