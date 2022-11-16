import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volunteer_app/screen/widget/app_text_filed.dart';

class PostScreen extends StatefulWidget {
  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  late TextEditingController _nameTextController;

  String? _nameErrorValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameTextController = TextEditingController();
  }

  @override
  void dispose() {
    _nameTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 1,
        title: Image.asset("images/logo.png", width: 90.w),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_forward_ios),
            color: Color(0xFF004AAD),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        children: [
          SizedBox(
            height: 39.h,
            width: 371.w,
            child: AppTextField(
                sufficIcon: Icon(Icons.search_rounded),
                keyboardType: TextInputType.text,
                controller: _nameTextController,
                emailTextController: _nameTextController,
                emailErrorValue: _nameErrorValue),
          ),
          SizedBox(
            height: 10.h,
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              'تدريب ميداني ',
              style: GoogleFonts.cairo(
                  color: Color(0xFF004AAD),
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          InkWell(
            onTap: (){
              Navigator.pushNamed(context, '/description_post_screen');
            },
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        EdgeInsetsDirectional.only(bottom: index == 5 ? 0 : 15),
                    height: 340.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 0),
                          color: Colors.black45,
                          blurRadius: 4,
                        )
                      ],
                    ),
                    child: Column(
                        children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'جمعية الحياة والامل',
                            style: GoogleFonts.cairo(
                                color: Color(0xFF004AAD),
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.w, vertical: 10.h),
                            child: CircleAvatar(
                                backgroundImage:
                                    AssetImage('images/logo_org.jpeg')),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          ClipRRect(
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            'images/category.jpeg',
                            height: 174.h,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(17.r),
                        ),
                          Positioned(
                            right: 0.w,
                            bottom: 30.h,
                            child: Opacity(
                              opacity: 0.8,
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.blue,
                                ),
                                child: Text('انظم الى الحملة التطوعية الاضخم لتنظيف شاطئ بحرغزة',
                                  style: GoogleFonts.cairo(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 18.sp,
                                  ),),
                              ),
                            ),
                          ),
                        ],
                      ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 9.h),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(Icons.access_alarm,color: Color(0xFF0440B9),size: 16,),
                                Text(
                                  '4:30 pm',
                                  style: GoogleFonts.cairo(
                                      color: Color(0xFF0440B9)
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'تبيقى 6 أيام لتسجيل',
                                  style: GoogleFonts.cairo(
                                      color: Color(0xFF0440B9)
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 9.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                              Icon(
                                  Icons.location_on,
                                  color: Color(0xFF0440B9)
                                  ,size: 16
                              ),
                              Text(
                                'غزة-شارع الرشيد - دوار ال17',
                                style: GoogleFonts.cairo(
                                    color: Color(0xFF0440B9),
                                  fontSize: 12
                                ),

                             ),
                              Spacer(),
                                  ElevatedButton(
                                    onPressed: (){

                                    },
                                    child: Text(
                                      'انضم الان',
                                      style: GoogleFonts.cairo(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold
                                      ),),
                                    style: ElevatedButton.styleFrom(
                                      primary: Color(0xFF004AAD),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(30.r),
                                      ),
                                      minimumSize:Size(115.w, 40.h)
                                    ),
                                  ),
                            ]),
                          ),
                    ]),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
