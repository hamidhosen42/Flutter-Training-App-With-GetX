// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

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
            padding: const EdgeInsets.only(top: 25,left: 25),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Training",
                      style:
                          TextStyle(fontSize: 30, color: AppColor.homePageTitle,fontWeight: FontWeight.w700),
                    ),
                    Expanded(child: Container()),
                    Icon(Icons.arrow_back_ios,size: 20,color: AppColor.homePageIcons,),
                    SizedBox(width: 5,),
                    Icon(Icons.calendar_today_outlined,size: 20,color: AppColor.homePageIcons),
                    SizedBox(width: 10,),
                    Icon(Icons.arrow_forward_ios,size: 20,color: AppColor.homePageIcons),
                    SizedBox(width: 20,),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}