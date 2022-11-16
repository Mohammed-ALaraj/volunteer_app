import 'package:flutter/gestures.dart';
import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volunteer_app/screen/utils/helper.dart';
import 'package:volunteer_app/screen/widget/app_text_filed.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Helpers {


  late TextEditingController _emailTextController;
  late TextEditingController _passwordTextController;
  late TapGestureRecognizer _tapGestureRecognizer;

  String? _emailErrorValue ;
  String? _passwordErrorValue;
  bool _obscure = true ;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    _tapGestureRecognizer = TapGestureRecognizer()..onTap = CreateNewAccountAction;
  }
  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _tapGestureRecognizer.dispose();
    super.dispose();
  }

  void CreateNewAccountAction(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 10.h,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 116.w),
                  child: Image.asset(
                    'images/logo.png',
                    height: 196.h,
                    width: 196.w,
                  ),
                ),
                SizedBox(height: 5.h,),
                Text(
                  'تسجيل الدخول',
                  style: GoogleFonts.cairo(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.sp,
                      color : Color(0xFF4871C0)
                  ),
                ),
                SizedBox(height: 14.h,),
                Text(
                  'أكبر شبكة لدعم المتطوعين',
                  style: GoogleFonts.cairo(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                      color : Colors.black54
                  ),
                ),
                SizedBox(height: 60.h,),
                AppTextField(
                    hint: 'البريد الالكتروني',
                    prefixIcon:  Icon(Icons.email),
                    keyboardType: TextInputType.text,
                    controller: _emailTextController,
                    emailTextController: _emailTextController,
                    emailErrorValue: _emailErrorValue
                ),
                SizedBox(height: 10.h,),
                AppTextField(
                    hint: 'كلمة المرور',
                    prefixIcon: Icon(Icons.lock),
                    obscureText: _obscure,
                    sufficIcon: IconButton(
                      onPressed: (){
                        setState(()=> _obscure =! _obscure);
                      },
                      icon:Icon(
                        _obscure ? Icons.visibility : Icons.visibility_off
                    ),
                    ),
                    keyboardType: TextInputType.text,
                    controller: _passwordTextController,
                    emailTextController: _passwordTextController,
                    emailErrorValue: _passwordErrorValue
                ),
                Padding(
                  padding: EdgeInsets.only(left: 213.w),
                  child: TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/forget_password_screen');
                    },
                    child: Text(
                      'هل نسيت كلمة المرور ؟',
                      style: GoogleFonts.cairo(
                          color: Colors.blue,
                        fontSize: 18.sp
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h,),
                SizedBox(
                  height: 60.h,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      PerformLogin();
                    },
                    child: Text(
                      'تسجيل الدخول',
                      style: GoogleFonts.cairo(
                          fontSize: 25.sp,
                        fontWeight: FontWeight.bold
                      ),),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF004AAD),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 80.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: (){
                        Navigator.pushNamed(context, '/register_screen');
                      },
                      child: Text(
                        'انشاء حساب جديد',
                        style: GoogleFonts.cairo(
                            color: Colors.blue,
                          fontSize: 18.sp
                        ),),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  void PerformLogin(){
    if(CheckData()){
      login();
    }
  }

  bool CheckData(){
    if(_emailTextController.text.isNotEmpty && _passwordTextController.text.isNotEmpty){
      _ControllerErrorValue();
      return true ;
    }
    _ControllerErrorValue();
    ShowSnackBar(context, message: 'Enter required data!',error: true);
    return false;
  }
  void _ControllerErrorValue(){
    setState((){
      _emailErrorValue = _emailTextController.text.isEmpty ? 'Enter Your Email' : null ;
      _passwordErrorValue = _passwordTextController.text.isEmpty ? 'Enter Your Password' : null ;
    });
  }
  void login(){
    Navigator.pushReplacementNamed(context, '/bottom_navigation_screen');
  }
}
