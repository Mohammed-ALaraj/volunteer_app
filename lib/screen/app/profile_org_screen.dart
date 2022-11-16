import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileOrgScreen extends StatefulWidget {
  const ProfileOrgScreen({Key? key}) : super(key: key);

  @override
  State<ProfileOrgScreen> createState() => _ProfileOrgScreenState();
}

class _ProfileOrgScreenState extends State<ProfileOrgScreen> {

  var likeColor = Colors.white;
  var joinColor = Colors.indigo;
  var joinColor2 = Colors.white;
  String joinText = "انضم الان";
  bool isLike = false;
  bool isJoin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          centerTitle: true,
          title: Text(
            'بروفايل المنظمة',
            style: GoogleFonts.cairo(
              color: Colors.indigo,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: (){
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_forward_ios),
              color: Color(0xFF004AAD),
            ),
          ]
      ),

      body: ListView(
        children: [
          Column(
            children: [
              //First Part
              Container(
                width: double.infinity,
                height: 130.0,
                child: Image.asset(
                  "images/logo_org.jpeg",
                  fit: BoxFit.cover,
                ),
                decoration: BoxDecoration(
                    border: Border.all(width: 0.5,color: Colors.blueAccent),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 7,
                        spreadRadius: 0.7,
                        offset: Offset(0,2),
                      )]
                ),
              ),

              SizedBox(
                height: 20,
              ),

              //Second Part
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    //Follow
                    TextButton(
                      onPressed: () {},
                      child: Text("متابعة",style: GoogleFonts.cairo(),),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.indigo),
                        foregroundColor: MaterialStateProperty.all(Colors.white),
                        overlayColor: MaterialStateProperty.all(Colors.blue),
                      ),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    //name of company
                    Container(
                      child: Text(
                        "جمعية الحياة و الامل",
                        style:
                        GoogleFonts.cairo(fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Spacer(flex: 1),
                    //img of company
                    CircleAvatar(
                      radius: 35.r,
                        backgroundImage:
                        AssetImage('images/logo_org.jpeg')),
                  ],
                ),
              ),

               Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  ' جمعية الحياة والأمل ضمن مشروع المشاركة المدنية للأطفال ” الطفل ',
                  style: GoogleFonts.cairo(
                    fontSize: 18.sp,
                    color: Color(0xff0843b4),
                    fontWeight: FontWeight.w700,
                  ),
                  textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.right,
                ),
              ),
              //Third Part
              SizedBox(height: 15.h,),

              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, '/description_post_screen');
                },
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 1,
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
        ],
      ),
    );
  }
}
