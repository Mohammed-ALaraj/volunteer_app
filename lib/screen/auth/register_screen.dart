import 'package:flutter/gestures.dart';
import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volunteer_app/screen/utils/helper.dart';
import 'package:volunteer_app/screen/widget/app_text_filed.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with Helpers {



  late TextEditingController _emailTextController;
  late TextEditingController _nameTextController;
  late TextEditingController _password1TextController;
  late TextEditingController _password2TextController;


  String? _emailErrorValue ;
  String? _password1ErrorValue;
  String? _nameErrorValue;
  String? _password2ErrorValue;

  bool _obscure1 = true ;
  bool _obscure2 = true ;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailTextController = TextEditingController();
    _password1TextController = TextEditingController();
    _nameTextController = TextEditingController();
    _password2TextController = TextEditingController();
  }
  @override
  void dispose() {
    _emailTextController.dispose();
    _password1TextController.dispose();
    _nameTextController.dispose();
    _password2TextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_forward_ios),color: Color(0xFF004AAD),),
        ],
      ),
      body:ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 116.w),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'images/logo.png',
                      height: 150.h,
                      width: 196.w,
                    ),
                  ),
                ),
                Text(
                  'انشاء حساب جديد',
                  style: GoogleFonts.cairo(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.sp,
                      color : Color(0xFF4871C0)
                  ),
                ),
                SizedBox(height: 5.h,),
                Text(
                  'أكبر شبكة لدعم المتطوعين',
                  style: GoogleFonts.cairo(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp,
                      color : Colors.black54
                  ),
                ),
                SizedBox(height: 30.h,),
                AppTextField(
                    hint: 'الاسم',
                    prefixIcon:  Icon(Icons.person),
                    keyboardType: TextInputType.text,
                    controller: _nameTextController,
                    emailTextController: _nameTextController,
                    emailErrorValue: _nameErrorValue
                ),
                SizedBox(height: 10.h,),
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
                    obscureText: _obscure1,
                    sufficIcon: IconButton(
                      onPressed: (){
                        setState(()=> _obscure1 =! _obscure1);
                      }, icon:
                    Icon(
                        _obscure1 ? Icons.visibility : Icons.visibility_off
                    ),
                    ),
                    keyboardType: TextInputType.text,
                    controller: _password1TextController,
                    emailTextController: _password1TextController,
                    emailErrorValue: _password1ErrorValue
                ),
                SizedBox(height: 10.h,),
                AppTextField(
                    hint: 'تأكيد كلمة المرور ',
                    prefixIcon: Icon(Icons.lock),
                    obscureText: _obscure2,
                    sufficIcon: IconButton(
                      onPressed: (){
                        setState(()=> _obscure2 =! _obscure2);
                      }, icon:
                    Icon(
                        _obscure2 ? Icons.visibility : Icons.visibility_off
                    ),
                    ),
                    keyboardType: TextInputType.text,
                    controller: _password2TextController,
                    emailTextController: _password2TextController,
                    emailErrorValue: _password2ErrorValue
                ),
                SizedBox(height: 60.h,),
                SizedBox(
                  height: 60.h,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){
                      PerformSignUp();
                      },
                    child: Text(
                      ' انشاء حساب',
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
              ],
            ),
          ),
        ],
      ),
    );
  }


  void PerformSignUp(){
    if(CheckData()){
      SignUp();
    }
  }

  bool CheckData(){
    if(
    _emailTextController.text.isNotEmpty &&
        _nameTextController.text.isNotEmpty &&
        _password2TextController.text.isNotEmpty &&
        _password1TextController.text.isNotEmpty){
      return true ;
    }
    ShowSnackBar(context, message: 'Enter required data!',error: true);
    return false;
  }
  void SignUp(){
    Navigator.pushReplacementNamed(context, '/login_screen');
  }
}
