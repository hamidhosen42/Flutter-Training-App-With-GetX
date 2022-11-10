// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unused_field, prefer_final_fields, avoid_unnecessary_containers, unused_local_variable, avoid_single_cascade_in_expression_statements, unnecessary_null_comparison, prefer_const_literals_to_create_immutables, unused_element

import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traing_app_wth_getx/colors.dart';
import 'package:traing_app_wth_getx/home_page.dart';
import 'package:video_player/video_player.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({super.key});

  @override
  State<VideoInfo> createState() => _VideoInfoState();
}

class _VideoInfoState extends State<VideoInfo> {
  List videoInfo = [];
  bool _playArea = false;
  bool _isPlaying = false;
  bool _disposed = false;

  late VideoPlayerController _controller;

  _initData() async {
    await DefaultAssetBundle.of(context)
        .loadString("json/videoinfo.json")
        .then((value) => {
              setState(() {
                videoInfo = json.decode(value);
              })
            }); 
  }

  // @override
  // Void disposed(){
  //   _disposed=true;
  //   _controller.pause();
  //   _controller.play();
  //   _controller=null;
  //   super.dispose();
  // }

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
        decoration: _playArea == false
            ? BoxDecoration(
                gradient: LinearGradient(
                colors: [
                  AppColor.gradientFirst.withOpacity(0.9),
                  AppColor.gradientSecond,
                ],
                begin: FractionalOffset(0.0, 0.4),
                end: Alignment.topRight,
              ))
            : BoxDecoration(color: AppColor.gradientSecond),
        child: Column(
          children: [
            _playArea == false
                ? Container(
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
                                        AppColor
                                            .secondPageContainerGradient1stColor,
                                        AppColor
                                            .secondPageContainerGradient2ndColor
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
                                        AppColor
                                            .secondPageContainerGradient1stColor,
                                        AppColor
                                            .secondPageContainerGradient2ndColor
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
                                        color: AppColor
                                            .homePageContainerTextSmall),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                : Container(
                    child: Column(
                      children: [
                        Container(
                          // height: 10,
                          child: Padding(
                            padding:
                                EdgeInsets.only(top: 30, left: 25, right: 25),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 50,
                                ),
                                InkWell(
                                  onTap: () {},
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
                                  color: AppColor.secondPageTopIconColor,
                                )
                              ],
                            ),
                          ),
                        ),
                        _playView(context),
                        _controlView(context),
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
                      child: _listView(),
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

  Widget _controlView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, bottom: 10, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
              onTap: () async {},
              child: Icon(
                Icons.fast_rewind,
                color: Colors.white,
                size: 36,
              )),
          InkWell(
              onTap: () async {
                 if (_isPlaying) {
                   setState(() {
                     _isPlaying=false;
                   });
                  _controller.pause();
                } else {
                  setState(() {
                    _isPlaying=true;
                  });
                  _controller.play();
                }
              },
              child: Icon(_isPlaying?Icons.stop_circle:Icons.play_arrow,
                color: Colors.white,
                size: 36,
              )),
          InkWell(
              onTap: () async {
               
              },
              child: Icon(
                Icons.fast_forward,
                color: Colors.white,
                size: 36,
              ))
        ],
      ),
    );
  }

  void _onControllerUpdate()async{
    final controller = _controller;

    if(controller==null)
    {
      debugPrint("Controller is null");
      return;
    }
    if(!controller.value.isInitialized)
    {
      debugPrint("Controller can not be initialized");
    }
    final playing= controller.value.isPlaying;
    _isPlaying=playing;
  }

    _initializeVideo(int index) async {
    final controller =
        VideoPlayerController.network(videoInfo[index]['videoUrl']);

      final old=_controller;

    _controller = controller;
    setState(() {});
    controller
      ..initialize().then((_) {
        controller.addListener(_onControllerUpdate);
        controller.play();
        setState(() {});
      });
  }

  _onTapVideo(int index) {
    _initializeVideo(index);
  }

  _playView(BuildContext context) {
    final controller = _controller;

    if (controller != null && controller.value.isInitialized) {
      return AspectRatio(
        aspectRatio: 16 / 9,
        child: VideoPlayer(controller),
      );
    } else {
      return AspectRatio(
          aspectRatio: 16 / 9,
          child: Center(
              child: Text(
            "Preparing....",
            style: TextStyle(fontSize: 20, color: Colors.white60),
          )));
    }
  }

  _listView() {
    return ListView.builder(
        itemCount: videoInfo.length,
        itemBuilder: (_, index) {
          return GestureDetector(
            onTap: () {
              _onTapVideo(index);

              debugPrint(index.toString());
              setState(() {
                if (_playArea == false) {
                  _playArea = true;
                }
              });
            },
            child: _buildCard(index),
          );
        });
  }

  _buildCard(int index) {
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