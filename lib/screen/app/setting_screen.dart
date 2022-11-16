import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volunteer_app/screen/drawer/drawer_screen.dart';
import 'package:volunteer_app/screen/widget/setting.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          'الاعدادات',
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
                setting(
                    ico: Icon(Icons.person),
                    type: "الملف الشخصي",
                    data: "Mohammed@gmail.com"
                ),
                setting(
                    ico: Icon(Icons.notifications_active),
                    type: "الاشعارات",
                    data: "See All"
                ),
                setting(
                    ico: Icon(Icons.question_mark),
                    type: "مساعدة",
                    data: "اسئلة؟"
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
