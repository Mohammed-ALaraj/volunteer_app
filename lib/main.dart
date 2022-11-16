import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volunteer_app/screen/app/home_screen.dart';
import 'package:volunteer_app/screen/app/post/desc_post_screen.dart';
import 'package:volunteer_app/screen/app/post/post_screen.dart';
import 'package:volunteer_app/screen/app/profile/event_screen.dart';
import 'package:volunteer_app/screen/app/profile/follow_screen.dart';
import 'package:volunteer_app/screen/app/profile_org_screen.dart';
import 'package:volunteer_app/screen/app/profile_user_screen.dart';
import 'package:volunteer_app/screen/app/setting_screen.dart';
import 'package:volunteer_app/screen/auth/forget_password_screen.dart';
import 'package:volunteer_app/screen/auth/login_screen.dart';
import 'package:volunteer_app/screen/auth/register_screen.dart';
import 'package:volunteer_app/screen/auth/reset_password_screen.dart';
import 'package:volunteer_app/screen/auth/success_reset_password_screen.dart';
import 'package:volunteer_app/screen/auth/virification_code_screen.dart';
import 'package:volunteer_app/screen/bottom/bottom_navigation_screen.dart';
import 'package:volunteer_app/screen/core/launch_screen.dart';


void main () {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        return ScreenUtilInit(
          minTextAdapt: true,
          designSize: Size(428,926),
          builder: (context,child){
            return  MaterialApp(
              debugShowCheckedModeBanner: false,
              initialRoute: '/lauanch_screen',
              routes: {

                // core
                '/lauanch_screen':(context)=>const LaunchScreen(),

                //auth
                '/login_screen' : (context)=>const LoginScreen(),
                '/register_screen':(context)=>const RegisterScreen(),
                '/forget_password_screen':(context)=> const ForgotPasswordScreen(),
                '/virify_code_screen':(context)=> const VirifyCodeScreen(),
                '/reset_password_screen':(context)=> const ResetPasswordScreen(),
                '/success_reset_password_screen':(context)=> const SuccessResetPasswordScreen(),

                //app
                '/home_screen':(context)=>const HomeScreen(),
                '/bottom_navigation_screen':(context)=> const BottomNavigationScreen(),
                '/post_screen':(context)=> PostScreen(),
                '/description_post_screen':(context)=> const PostDescriptionScreen(),
                '/profile_user_screen':(context)=> const ProfileUserScreen(),
                '/profile_org_screen':(context)=>const ProfileOrgScreen(),
                '/setting_screen':(context)=> const  SettingScreen(),

                //profile
                '/event_screen':(context)=> const EventScreen(),
                '/follow_screen':(context)=> const FollowScreen()


              },
            );
          },
        );
  }
}
