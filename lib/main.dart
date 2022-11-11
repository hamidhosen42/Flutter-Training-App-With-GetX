// ignore_for_file: prefer_const_constructors
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:traing_app_wth_getx/home_page.dart';
import 'package:traing_app_wth_getx/video_info.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        // home: HomePage(),
        // home: VideoInfo(),

        home: AnimatedSplashScreen(
          duration: 3,
          splashIconSize: 300,
          splash:Image.asset("assets/logo.png"),
          nextScreen: HomePage(),
          splashTransition: SplashTransition.fadeTransition,
          // pageTransitionType: PageTransitionType.scale,
          // )),
        ));
  }
}