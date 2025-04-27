import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../Constants/custom_textstyles.dart';
import '../NavigationBars/activity/activity.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            leading: IconButton(onPressed: (){}, 
            icon: Icon(Icons.arrow_back)),//change to svg image
      
            centerTitle: true,
            title: Text('Activity',
            style: titleLargeBold.copyWith(
              fontSize: 18,
            ),
            ),
          ),
        body: Activity()
      ),
    );
  }
}
