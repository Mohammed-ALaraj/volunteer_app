import 'package:flutter/gestures.dart';
import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volunteer_app/controller/signup_controller.dart';
import 'package:volunteer_app/view/screen/utils/helper.dart';
import 'package:volunteer_app/view/screen/widget/app_text_filed.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> with Helpers {






  String? _emailErrorValue ;
  String? _password1ErrorValue;
  String? _nameErrorValue;
  String? _password2ErrorValue;

  bool _obscure1 = true ;
  bool _obscure2 = true ;

final signupController =Get.put(Signup_Controller());



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
            child: GetBuilder<Signup_Controller>(
              builder: (controller) {
                return Column(
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
                        controller: controller.nameController,
                        emailTextController: controller.nameController,
                        emailErrorValue: _nameErrorValue
                    ),
                    SizedBox(height: 10.h,),
                    AppTextField(
                        hint: 'البريد الالكتروني',
                        prefixIcon:  Icon(Icons.email),
                        keyboardType: TextInputType.text,
                        controller: controller.emailController,
                        emailTextController: controller.emailController,
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
                        controller: controller.passwordController,
                        emailTextController: controller.passwordController,
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
                        controller: controller.confirmPasswordController,
                        emailTextController: controller.confirmPasswordController,
                        emailErrorValue: _password2ErrorValue
                    ),
                    SizedBox(height: 60.h,),
                    SizedBox(
                      height: 60.h,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: (){
                          controller.checkSignup();
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
                );
              }
            ),
          ),
        ],
      ),
    );
  }





}
