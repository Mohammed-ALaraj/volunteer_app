import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volunteer_app/screen/app/home_screen.dart';
import 'package:volunteer_app/screen/app/profile_user_screen.dart';
import 'package:volunteer_app/screen/app/setting_screen.dart';
import 'package:volunteer_app/screen/models/btn_screen.dart';

class BottomNavigationScreen extends StatefulWidget {
  const BottomNavigationScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  
  List<BnScreen>_screens = <BnScreen> [
    BnScreen(widget: HomeScreen()),
    BnScreen(widget: ProfileUserScreen()),
    BnScreen(widget: SettingScreen())
  ];

  int _selectPageIndex = 0 ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectPageIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 6,
        backgroundColor: Colors.white,
        onTap: (int selectPageIndex){
          setState(()=>_selectPageIndex = selectPageIndex);
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectPageIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.home,size: 35.sp,color: Color(0xFF4871C0),),
              icon: Icon(Icons.home_outlined,size: 30.sp,color: Colors.grey.shade600),
              label: 'Home'
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.person,size: 35.sp,color: Color(0xFF4871C0),),
              icon: Icon(Icons.person_outline,size: 30.sp,color: Colors.grey.shade600),
              label: 'Profile'
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.settings,size: 35.sp,color: Color(0xFF4871C0),),
              icon: Icon(Icons.settings_outlined,size: 30.sp,color: Colors.grey.shade600),
              label: 'Setting'
          ),
        ],
      ),
    );
  }
}
