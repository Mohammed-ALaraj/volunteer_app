import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class location extends StatelessWidget {
  const location({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
      child: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(31.499677, 34.431276),
          zoom: 14
        ),
      ),
    );
  }
}
