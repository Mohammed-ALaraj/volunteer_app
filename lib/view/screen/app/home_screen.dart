import 'dart:ui';

import'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volunteer_app/view/screen/auth/login_screen.dart';
import 'package:volunteer_app/view/screen/drawer/drawer_screen.dart';
import 'package:volunteer_app/view/screen/widget/app_text_filed.dart';
import 'package:volunteer_app/view/screen/widget/home_section.dart';

import 'package:carousel_slider/carousel_slider.dart';

final List <Image>imgList = [
  Image.asset('images/slider.png',),
  Image.asset('images/slider.png',),
  Image.asset('images/slider.png',),

];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {



  late TextEditingController _nameTextController;
  late PageController _pageController;

  String? _nameErrorValue;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameTextController = TextEditingController();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 2);
  }
  @override
  void dispose() {
    _nameTextController.dispose();
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Image.asset("images/logo.png", width: 90.w),
        elevation: 1,

        actions: [
          Builder(builder: (context){
            return IconButton(
                onPressed: ()=>Scaffold.of(context).openEndDrawer(),
                icon: Icon(Icons.dehaze_rounded,color: Color(0xFF003F75),size: 35,)
            );
          },
          ),
        ],
      ),
      endDrawer: DrawerScreen(),
      body:ListView(
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
                  emailErrorValue: _nameErrorValue
              ),
            ),
            SizedBox(height: 20.h,),


            // ConstrainedBox(
            //     constraints: BoxConstraints(maxHeight: 140.h),
            //   child: PageView.builder(
            //     controller: _pageController,
            //     itemCount: 3,
            //     scrollDirection: Axis.horizontal,
            //     onPageChanged: (int PageIndex){},
            //     itemBuilder: (context,index){
            //       return Card(
            //         elevation: 4,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(20.r),
            //         ),
            //         clipBehavior: Clip.antiAlias,
            //         margin:
            //         EdgeInsetsDirectional.only(end: index != 2 ? 10 : 0),
            //         color: Colors.white,
            //         child: Image.asset(
            //             'images/slider.png',
            //           width: double.infinity,
            //           height: double.infinity,
            //           fit: BoxFit.cover,
            //         ),
            //       );
            //     },
            //   ),
            // ),


          CarouselSlider(
              items:imgList.toList(),
              options: CarouselOptions(
                height: 150.h,
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              )
          ),





          SizedBox(height: 5  .h,),
          HomeSection(title: 'أضيف حديثا',Subtitle: 'رؤية الكل',
            ico:Icon(Icons.arrow_drop_down_sharp,color: Colors.blueAccent,),),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 100,
            ),
            child: GridView.builder(
              reverse: true,
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 10,
                  childAspectRatio: 87.h / 141.w,
                ),
                itemBuilder: (context, index) {
                  return Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context,'/profile_org_screen');
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              'images/logo_org.jpeg',
                              height: 80.h,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            // Align(
                            //   alignment: Alignment.center,
                            //   child: Text(
                            //       'مؤسسة الأمل ',
                            //       style: GoogleFonts.cairo(
                            //           color: Colors.black,
                            //           fontSize: 12,
                            //         fontWeight: FontWeight.bold
                            //       ),
                            //     ),
                            // ),
                          ],
                        ),
                      ),

                  );
                }),
          ),
          SizedBox(height: 20.h,),
          HomeSection(title: 'أختر نوع العمل التطوعي',),
          // GridView.builder(
          //     physics: NeverScrollableScrollPhysics(),
          //     shrinkWrap: true,
          //     scrollDirection: Axis.vertical,
          //     itemCount: 4,
          //     gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2,
          //       crossAxisSpacing: 10,
          //       mainAxisSpacing: 10,
          //       childAspectRatio: 170.w / 150.h,
          //     ) ,
          //     itemBuilder: (context,index){
          //       return Expanded(
          //         child: InkWell(
          //           onTap: (){
          //             Navigator.pushNamed(context, '/post_screen');
          //           },
          //           child: Card(
          //             elevation: 4,
          //             shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(10),
          //             ),
          //             clipBehavior: Clip.antiAlias,
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.stretch,
          //               mainAxisSize: MainAxisSize.min,
          //               children: [
          //                 Image.asset(
          //                     'images/category.jpeg',
          //                 ),
          //                 SizedBox(height: 10.h,),
          //                 Expanded(
          //                   child: Align(
          //                     alignment: Alignment.center,
          //                     child: Text(
          //                         'تدريب ميداني ',
          //                       style: GoogleFonts.cairo(
          //                         color: Color(0xFF4871C0),
          //                         fontSize: 20
          //                       ),
          //                     ),
          //                   ),
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //       );
          //     }
          // ),
          ],
        ),
      );

  }


}

