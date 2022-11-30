import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:volunteer_app/view/screen/app/home_screen.dart';
import 'package:volunteer_app/view/screen/app/profile/notifaications.dart';
import 'package:volunteer_app/view/screen/app/profile_user_screen.dart';
// import 'package:volunteer_app/screen/app/setting_screen.dart';
// import 'package:volunteer_app/screen/models/btn_screen.dart';
//
// class BottomNavigationScreen extends StatefulWidget {
//   const BottomNavigationScreen({Key? key}) : super(key: key);
//
//   @override
//   State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
// }
//
// class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
//
//   List<BnScreen>_screens = <BnScreen> [
//     BnScreen(widget: HomeScreen()),
//     BnScreen(widget: ProfileUserScreen()),
//     BnScreen(widget: Notifictions())
//   ];
//
//   int _selectPageIndex = 0 ;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _screens[_selectPageIndex].widget,
//
//       bottomNavigationBar: BottomNavigationBar(
//         elevation: 6,
//         backgroundColor: Colors.white,
//         onTap: (int selectPageIndex){
//           setState(()=>_selectPageIndex = selectPageIndex);
//         },
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//         currentIndex: _selectPageIndex,
//         type: BottomNavigationBarType.fixed,
//         items: [
//           BottomNavigationBarItem(
//               activeIcon: Icon(Icons.home,size: 35.sp,color: Color(0xFF4871C0),),
//               icon: Icon(Icons.home_outlined,size: 30.sp,color: Colors.grey.shade600),
//               label: 'Home'
//           ),
//           BottomNavigationBarItem(
//               activeIcon: Icon(Icons.person,size: 35.sp,color: Color(0xFF4871C0),),
//               icon: Icon(Icons.person_outline,size: 30.sp,color: Colors.grey.shade600),
//               label: 'Profile'
//           ),
//           BottomNavigationBarItem(
//               activeIcon: Icon(Icons.notifications,size: 35.sp,color: Color(0xFF4871C0),),
//               icon: Icon(Icons.notifications,size: 30.sp,color: Colors.grey.shade600),
//               label: 'Notifications'
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//

/*
 *  Copyright 2020 chaobinwu89@gmail.com
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing, software
 *  distributed under the License is distributed on an "AS IS" BASIS,
 *  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *  See the License for the specific language governing permissions and
 *  limitations under the License.
 */


import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../models/btn_screen.dart';



class BottomNavigationScreen extends StatefulWidget {
  @override
  State createState() => _State();
}

class _State extends State<BottomNavigationScreen> {


    List<BnScreen>_screens = <BnScreen> [
    BnScreen(widget:ProfileUserScreen() ),
    BnScreen(widget:HomeScreen() ),
    BnScreen(widget: Notifictions())
  ];

    int _selectPageIndex = 0 ;
  @override
  Widget build(BuildContext context) {
    return
    Scaffold(
        backgroundColor: Colors.red,

        body: _screens[_selectPageIndex].widget,
    bottomNavigationBar: ConvexAppBar(
    items: [
      TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.person, title: 'person'),
      TabItem(icon: Icons.notifications, title: 'notifications'),

    ],
        backgroundColor:Colors.deepPurpleAccent,
        activeColor: Colors.white,
        onTap: (int selectPageIndex){
          setState(()=>_selectPageIndex = selectPageIndex);
        },
    )
    );
  }
}