import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volunteer_app/view/screen/app/post/tabs/cartirea_screen.dart';
import 'package:volunteer_app/view/screen/app/post/tabs/contact_us_screen.dart';
import 'package:volunteer_app/view/screen/app/post/tabs/description_screen.dart';
import 'package:volunteer_app/view/screen/app/post/tabs/location_screen.dart';

class PostDescriptionScreen extends StatefulWidget {
  const PostDescriptionScreen({Key? key}) : super(key: key);

  @override
  State<PostDescriptionScreen> createState() => _PostDescriptionScreenState();
}

class _PostDescriptionScreenState extends State<PostDescriptionScreen> with SingleTickerProviderStateMixin {

  late TabController  _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4,vsync: this,initialIndex: 3);
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          centerTitle: true,
          title: Image.asset("images/logo.png", width: 90.w),
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
        body:Column(
          children: [
            Image.asset(
              'images/category.jpeg',
              width: double.infinity,
              height: 300.h,
              fit: BoxFit.cover,
            ),
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
                      horizontal: 20.w, vertical: 20.h),
                  child: CircleAvatar(
                    radius: 30.r,
                      backgroundImage:
                      AssetImage('images/logo_org.jpeg')),
                ),
              ],
            ),
            DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(30.r),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0,1),
                    blurRadius: 1
                  )
                ]
              ),
              child: TabBar(
                controller: _tabController,
                  indicator: BoxDecoration(
                    color: Color(0xFF004AAD),
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        offset: Offset(0,3),
                        blurRadius: 4
                      ),
                    ]
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  onTap: (int tabIndex){
                    setState(()=> _tabController.index = tabIndex);
                  },
                  tabs:[
                    Tab(text: 'تواصل معنا',),
                    Tab(text: 'الموقع',),
                    Tab(text: 'المعايير',),
                    Tab(text: 'التفاصيل',),
                  ]
              ),
            ),
            Expanded(
              child: TabBarView(
                  controller: _tabController,
                  children: [
                    contact_us_screen(),
                    location(),
                    criterea(),
                    description(),
                  ]
              ),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(vertical: 10.h),
              child: ElevatedButton(
                onPressed: (){
                  _showLanguageSheet();
                },
                child: Text(
                  'انضم الان',
                  style: GoogleFonts.cairo(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold
                ),),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF004AAD),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  elevation: 6,
                  minimumSize: Size(325.w, 50.h),
                ),
              ),
            ),
          ],
        ),
    );
  }
  void _showLanguageSheet() {
    showModalBottomSheet<String>(
      backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15)
          ),
        ),
        clipBehavior: Clip.antiAlias,
        context: context,
        builder: (context){
          return StatefulBuilder(
              builder: (context , setState){
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w,vertical: 15.h),
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 50.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 5.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(10.r)
                          ),
                        ),
                        SizedBox(height: 40.h,),
                        Image.asset(
                            'images/done.png',
                          height: 120.h,
                        ),
                        Text(
                          ' ! تم الانضمام بنجاح',
                          style: GoogleFonts.cairo(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                            color: Color(0xFF004AAD)
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
          );
        }
    );

  }

}




