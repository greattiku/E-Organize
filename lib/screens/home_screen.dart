import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Constants/colors.dart';
import '../Constants/custom_textstyles.dart';
import '../Constants/images.dart';
import '../NavigationBars/home/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
  
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteBackgroundColor,
        appBar: AppBar(
          backgroundColor: AppColors.whiteBackgroundColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome back', 
                  style: bodySmall.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w300
                  )),
                  Text('BELLA',
                  style: titleLargeBold.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w800
                  )),
                   
                ],
              ),
                  SvgPicture.asset(AppImages.profilePic1),
            ],
          ),
        ),
        body: Home(),
      ),
    );
  }
}