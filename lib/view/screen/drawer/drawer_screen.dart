import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volunteer_app/view/screen/app/profile/notifaications.dart';

import '../app/setting_screen.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return  Drawer(
        backgroundColor: Color(0xFF003F75),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Color(0xFF8ACAFE
                  )),

              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('images/person.png'),
                ),
                CircleAvatar(
                  backgroundImage: AssetImage('images/person.png'),
                ),
              ],
              accountName: Text(
                'Ayman Ibrahem',
                style: GoogleFonts.cairo(
                  fontSize: 18.sp, fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                'ayman@gmail.com',
                style: GoogleFonts.cairo(
                    fontSize: 12.sp, fontWeight: FontWeight.w300),
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/person.png')
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
                  title: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'تغذية',
                        style: GoogleFonts.cairo(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  trailing: Icon(Icons.description,color: Colors.white,),
                ),
                ListTile(
                  leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
                  title: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'الإعدادات',
                        style: GoogleFonts.cairo(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  trailing: Icon(Icons.settings,color: Colors.white,),
                  onTap: () {
                    Get.to(SettingScreen());
                  },
                ),
                ListTile(
                  leading: Icon(Icons.arrow_back_ios,color: Colors.white,),
                  title: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        'تسجيل الخروج',
                        style: GoogleFonts.cairo(
                            color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  trailing: Icon(Icons.logout,color: Colors.white,),
                  onTap: () {
                    _confirmLogoutDialog();
                  },
                ),
              ],
            ),
          ],
        ),

    );
  }
  void _confirmLogoutDialog() {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              'تأكيد تسجيل الخروج',
              textAlign: TextAlign.end,
              style: GoogleFonts.cairo(
                  fontSize: 20.sp,
                  color: Colors.black),
            ),
            content: Text(
              'هل أنت متأكد ؟',
              textAlign: TextAlign.end,
              style: GoogleFonts.cairo(
                  fontSize: 16.sp,
                  color: Colors.black45
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Future.delayed(Duration(microseconds: 500 ), (){
                      Navigator.pushNamed(context , '/login_screen');
                    });                  },
                  child: Text(
                    'تأكيد',
                    style: GoogleFonts.cairo(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('الغاء', style: GoogleFonts.cairo())),
            ],
          );
        });
  }

}
