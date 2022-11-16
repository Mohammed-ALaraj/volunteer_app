import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class location extends StatelessWidget {
  const location({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
      child: Image.asset('images/location.jpeg'),
    );
  }
}
