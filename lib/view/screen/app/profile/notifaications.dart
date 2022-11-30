
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volunteer_app/view/screen/auth/login_screen.dart';

import '../../bottom/bottom_navigation_screen.dart';
import '../../drawer/drawer_screen.dart';
import '../home_screen.dart';

class Notifictions extends StatefulWidget {
  const Notifictions({Key? key}) : super(key: key);

  @override
  State<Notifictions> createState() => _NotifictionsState();
}

class _NotifictionsState extends State<Notifictions> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
         centerTitle: true,
        leading: IconButton(onPressed: () {Get.to(HomeScreen()); }, icon: Icon(Icons.arrow_back_ios , color:Color(0xFF003F75),),),
        title: Text(
          'الإشعارات',
          style: GoogleFonts.cairo(
            color: Colors.indigo,
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  icon: Icon(
                    Icons.dehaze_rounded,
                    color: Color(0xFF003F75),
                    size: 35.sp,
                  ));
            },
          ),
        ],
      ),

      endDrawer: DrawerScreen(),


      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [

              ],
            ),
          ),
        ],
      ),
    );
  }
}
