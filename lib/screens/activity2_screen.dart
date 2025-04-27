import 'package:e_organizer/NavigationBars/home/schedule_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../Constants/custom_textstyles.dart';
import '../NavigationBars/activity/activity2.dart';


class Activity2Screen extends StatelessWidget {
  const Activity2Screen({super.key, required this.scheduleModel});
  final ScheduleModel scheduleModel;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 15, right: 15,bottom: 15),
        child: Scaffold(
          appBar: AppBar(
                leading: IconButton(onPressed: (){
                  Navigator.pop(context);
                }, 
                icon: Icon(Icons.arrow_back)),//change to svg image
          
                centerTitle: true,
                title: Text('Activity',
                style: titleLargeBold.copyWith(
                  fontSize: 18,
                ),
                ),
                actions: [
                  Icon(Icons.more_vert_sharp)//change to svgimage
                ],
              ),
          body:Activity2(sch: scheduleModel),
        ),
      ),
    );
  }
}