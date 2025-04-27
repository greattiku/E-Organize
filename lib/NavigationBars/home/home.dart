import 'package:e_organizer/NavigationBars/home/schedule.dart';
import 'package:e_organizer/NavigationBars/home/schedule_model.dart';
import 'package:e_organizer/utilities/extensions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Constants/colors.dart';
import '../../Constants/custom_textstyles.dart';
import '../../Constants/images.dart';
import '../../helper_Widgets/helper_widgets.dart';





class Home extends StatefulWidget {
  const Home({super.key,
  });
 
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
   List<Categories> categories = [
    Categories(text: 'Meetings', pics: SvgPicture.asset(AppImages.runnngIcon,)), //change to svgimage
    Categories(text: 'Personal', pics: SvgPicture.asset(AppImages.walkingIcon)),//change to svgimage
    Categories(text: 'Work', pics: SvgPicture.asset(AppImages.cyclinigIcon)),//change to svgimage
    Categories(text: 'Deadlines', pics: SvgPicture.asset(AppImages.yogaIcon)),//change to svgimage
    Categories(text: 'Reminders', pics: SvgPicture.asset(AppImages.swimmingIcon)),//change to svgimage
    Categories(text: 'Work', pics: SvgPicture.asset(AppImages.walkingIcon)),//change to svgimage
    Categories(text: 'Meetings', pics: SvgPicture.asset(AppImages.runnngIcon)),//change to svgimage
  ];

  List<EventProject> projects = [
    EventProject(
      title: 'Project Alpha', subTitle: 'April 15th, 2025',  
      onPressed: (){}, buttonText: Text('Join Challenge',
      style: GoogleFonts.inter(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.whiteTextColor
     )), 
     icon1: SvgPicture.asset(AppImages.walkingIcon)),
    EventProject(
     title: 'Meeting Team X', subTitle: 'April 15th, 2025', 
     onPressed: (){}, buttonText: Text('Join Challenge',
     style: bodySmall.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: AppColors.whiteTextColor
     ) ), 
     icon1: SvgPicture.asset(AppImages.runnngIcon)),

  ];

  List<ScheduleModel> schedule = [
     ScheduleModel(icon1: SvgPicture.asset(AppImages.walkingIcon), title: 'Morning Meeting', subTitle: 'Time : 10:00 AM',progressLabel: 'Status: 1hr',),
     ScheduleModel(icon1: SvgPicture.asset(AppImages.runnngIcon), title: 'Draft Proposal', subTitle: 'Time : 10:00 AM', icon: SvgPicture.asset(AppImages.clockIcon),time: '4am-6am', icon2: SvgPicture.asset(AppImages.arrowsRunningIcon,height: 100.0.h,width: 137.0.w,),),
     ScheduleModel(icon1: SvgPicture.asset(AppImages.walkingIcon), title: 'Draft Proposal', subTitle: 'Time : 10:00 AM', icon: SvgPicture.asset(AppImages.clockIcon),time: '4am-6am',icon2: SvgPicture.asset(AppImages.arrowsRunningIcon,height: 100.0.h,width: 137.0.w,),),
     ScheduleModel(icon1: SvgPicture.asset(AppImages.walkingIcon), title: 'Draft Proposal', subTitle: 'Time : 10:00 AM', icon: SvgPicture.asset(AppImages.clockIcon),time: '4am-6am', icon2: SvgPicture.asset(AppImages.arrowsRunningIcon,height: 100.0.h,width: 137.0.w,),),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10, ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: const Color(0XFF000D0D),
                  hintText: 'Search your category',
                  hintStyle: titleSmall.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0XFFADADAD),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      color: AppColors.borderColor,
                      width: 1.0
                    )
                  )
                )
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text('Available Categories?',
            style: titleLargeBold.copyWith(
              fontSize: 18.0,
              fontWeight: FontWeight.w800,
              color: const Color(0XFF000D0D),
            ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            
            SizedBox(
              height: 75,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                    final Categories items = categories[index];
                    return Container(
                       height: 75,
                       width: 75,
                       decoration: BoxDecoration(
                       color: const Color(0XFFFFFFFF),
                       borderRadius: BorderRadius.circular(8.0),
                       border: Border.all(
                         width: 1.0,
                         color: const Color(0XFFE8E8E8),
                            )
                          ),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomClipOvalWidget(
                        width: 36.0.w,
                        height: 36.0.h,
                        //borderRadius: 20,
                        backgroundColor: const Color(0XFF008080).withOpacity(0.1),
                        child: items.pics),
                      
                      Text(items.text,
                      style: bodySmall.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.w800,
                      ),
                      ),
                    ],
                                  ),
                                );
              }, 
              separatorBuilder: (context,index){
                return const SizedBox(
                  width: 10,
                );
              }, itemCount: categories.length),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Top Events / Projects',
                style: titleLarge.copyWith(
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                )
                ),
                TextButton(onPressed: (){}, 
                child: Text('See more',
                          style: GoogleFonts.inter(
                            color: const Color(0XFF000980),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 120,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return EventProject(
                    icon1: projects[index].icon1,
                    title: projects[index].title, 
                    subTitle: projects[index].subTitle, 
                    onPressed: projects[index].onPressed, 
                    buttonText: projects[index].buttonText);
              }, 
              separatorBuilder: (context,index){
                return const SizedBox(width: 10,);
              }, 
              itemCount: projects.length
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Today\'s Schedule ',
                style: GoogleFonts.inter(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                )
                ),
                TextButton(onPressed: (){}, 
                child: Text('See more',
                          style: GoogleFonts.inter(
                            color: const Color(0XFF000980),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            
            SizedBox(
              height: 390.0.h,
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                itemBuilder: (context,index){
                  final ScheduleModel  scheduleModel = ScheduleModel(
                     icon1: schedule[index].icon1, 
                    title: schedule[index].title, 
                    subTitle: schedule[index].subTitle,
                    icon: schedule[index].icon,
                    progressLabel: schedule[index].progressLabel,
                    time: schedule[index].time,
                    icon2: schedule[index].icon2,
                  );
                  return Schedule(scheduleModel: scheduleModel);
                    
              }, 
              separatorBuilder: (context,index){
                return const SizedBox(height: 12,);
              }, 
              itemCount: schedule.length
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Categories{
  final String text;
  final Widget pics;

  Categories({
    required this.text,
    required this.pics
  });
}


class EventProject extends StatelessWidget {
  const EventProject({super.key,
  required this.icon1,
  required this.title,
    required this.subTitle,
    required this.onPressed,
    required this.buttonText,
  });
  final Widget icon1;
  final String title;
  final String subTitle;
  final VoidCallback onPressed;
  final Widget buttonText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 226,
      decoration: BoxDecoration(
        color: AppColors.whiteTextColor,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          width: 1.0,
          color: AppColors.borderColor,
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                            icon1,
                            SizedBox(width: 5,),
                             Text(title,
                             style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w700
                             ),
                             ),
                           ],
                         ),
                         const SizedBox(height: 4,),
                         Text(subTitle,
                         style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: AppColors.ashTextColor
                         ),
                         ),
                      ],
                    ),
                  ),
                      SvgPicture.asset(AppImages.backgroundHeartIcon,width: 113.0.w,height: 113.0.h,)
                ],
               ),
              ],
            ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Center(
                    child: ElevatedButton(onPressed: (){}, 
                    style: ButtonStyles.elevatedButtonStyle(
                        backgroundColor: AppColors.appPrimaryColor, 
                        minimumSize: const Size(200, 40),
                        borderRadius: BorderRadius.circular(8)
                       ),
                    child: buttonText,
                      ),
                  ),)
          ],
        ),
      ),
    );
  }
}


