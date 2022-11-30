import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class criterea extends StatelessWidget {
  const criterea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 55.w,vertical: 10.h),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Text(
              'المعايير',
              style: GoogleFonts.cairo(
                  color: Color(0xFF004AAD),
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp
              ),
            ),
          ),
          SizedBox(
            child: Text(
              textAlign :TextAlign.right,
              'العمل التطوعي سمة المجتمعات الحيوية، لدوره في تفعيل طاقات المجتمع، وإثراء الوطن بمنجزات أبنائه وسواعدهم. عبر منصة العمل التطوعي يمكنك أن تتطوع، في المكان، والزمان، والمجال الذي يناسب خبراتك ومهاراتك، كما تتيح لك المنصة توثيق ساعاتك وإصدار شهاداتك التطوعية. كن جزءًا من رؤية المملكة 2030 وانضم إلى ركب المليون متطوع.',
              style: GoogleFonts.cairo(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500
              ),
            ),
            width: 310.w,
            height: 240.h,
          ),
        ],
      ),
    );
  }
}
