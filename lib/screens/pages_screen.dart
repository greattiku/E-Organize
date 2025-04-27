import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Constants/colors.dart';
import '../Constants/custom_textstyles.dart';
import '../controllers/page_controller.dart';
import 'activity_screen.dart';
import 'home_screen.dart';


class PagesScreen extends StatefulWidget {
  const PagesScreen({super.key});

  @override
  State<PagesScreen> createState() => _PagesScreenState();
}

class _PagesScreenState extends State<PagesScreen> {
    var controller = Get.find<PagesController>();
 final List<Widget> pages = [
      const HomeScreen(),
      const ActivityScreen()
    ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(()=> pages[controller.currentPageIndex.value]),
        bottomNavigationBar: Obx(()=>
           SizedBox(
            height: 92,
             child: BottomNavigationBar(
              selectedLabelStyle: titleLargeBold.copyWith(fontSize: 14, fontWeight: FontWeight.w900),
              unselectedLabelStyle: titleLargeBold.copyWith(fontSize: 14, fontWeight: FontWeight.w900),
              iconSize: 24,
              selectedItemColor: AppColors.appPrimaryColor,
              currentIndex: controller.currentPageIndex.value,
              onTap: (index) {
                controller.currentPageIndex.value = index;
                  },
              items: const [
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(Icons.home)),
                BottomNavigationBarItem(
                  label: 'Activty',
                  icon: Icon(Icons.insert_chart_rounded))
              ]),
           ),
        ),
        
      ));
  }
}