import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volunteer_app/screen/widget/card_w.dart';

class contact_us_screen extends StatelessWidget {
  const contact_us_screen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30.h,),
        card_widdget(
            ledingIcon: Icons.mobile_friendly,
            Title: 'Mobile',
            SubTitle: '+972594258327',
            TraillingIcon: Icons.phone
        ),
        SizedBox(height: 20.h,),
        card_widdget(
            ledingIcon: Icons.email_outlined,
            Title: 'Email',
            SubTitle: 'ayman@gmail.com',
            TraillingIcon: Icons.send
        ),
      ],
    );
  }
}

