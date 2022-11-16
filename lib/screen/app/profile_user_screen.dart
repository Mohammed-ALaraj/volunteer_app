import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volunteer_app/screen/drawer/drawer_screen.dart';

class ProfileUserScreen extends StatefulWidget {
  const ProfileUserScreen({Key? key}) : super(key: key);

  @override
  State<ProfileUserScreen> createState() => _ProfileUserScreenState();
}

class _ProfileUserScreenState extends State<ProfileUserScreen> {

  late TextEditingController _experienceTextController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _experienceTextController = TextEditingController();
  }
  @override
  void dispose(){
    _experienceTextController.dispose();
    super.dispose();

  }

  List<String> _experiences = <String> [];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        title: Text(
          'الملف الشخصي',
          style: GoogleFonts.cairo(
            color: Colors.indigo,
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          Builder(
            builder: (context) {
              return IconButton(
                  onPressed: () => Scaffold.of(context).openEndDrawer(),
                  icon: Icon(
                    Icons.dehaze_rounded,
                    color: Color(0xFF003F75),
                    size: 35.sp,
                  ));
            },
          ),
        ],
      ),
      endDrawer: DrawerScreen(),
      body: ListView(
        children: [
          Column(
            children: [
              //First Part
              Container(
                width: double.infinity,
                height: 150.h,
                // child: Image.asset(
                //   "assets/images/user.png",
                // ),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  border: Border.all(width: 0.5.w, color: Colors.black45),
                ),
              ),

              SizedBox(
                height: 10.h,
              ),

              //Second Part
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Spacer(
                      flex: 5,
                    ),
                    //name of company
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          child: Text(
                            "أيمن",
                            style: GoogleFonts.cairo(
                                fontWeight: FontWeight.bold, fontSize: 20.sp),
                          ),
                        ),
                        Container(
                          child: Text(
                            "فلسطين_غرة",
                            style: GoogleFonts.cairo(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.sp,
                                color: Color(0xFF004AAD)),
                          ),
                        ),
                      ],
                    ),
                    Spacer(flex: 1),
                    //img of company
                    CircleAvatar(
                      radius: 40.r,
                      backgroundImage: AssetImage('images/person.png'),
                    ),
                  ],
                ),
              ),

              //Third Part
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //متابعاتي
                    InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, '/follow_screen');
                      },
                      child: Container(
                          alignment: Alignment.center,
                          height: 115.h,
                          width: 165.w,
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            borderRadius: BorderRadius.circular(22.0.r),
                            border: Border.all(
                                color: const Color(0xff707070)),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x29000000),
                                offset: Offset(0, 3),
                                blurRadius: 1,
                              ),
                            ],
                          ),
                          child: SizedBox(
                            width: 95.0.w,
                            height:40.h,
                            child: Text(
                              'متابعاتي',
                              style: GoogleFonts.cairo(
                                fontSize: 22.sp,
                                color: const Color(0xff0843b4),
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                    ),
                    //فعالياتي
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/event_screen');
                  },
                   child : Container(
                      alignment: Alignment.center,
                      height: 115.h,
                      width: 165.w,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(22.0.r),
                        border: Border.all(
                            color: const Color(0xff707070)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 1,
                          ),
                        ],
                      ),
                      child: SizedBox(
                        width: 95.0.w,
                        height: 40.0.h,
                        child: Text(
                          'فعالياتي',
                          style: GoogleFonts.cairo(
                            fontSize: 22.sp,
                            color: const Color(0xff0843b4),
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ],
                ),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'معلومات التواصل',
                    style: GoogleFonts.cairo(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.only(left: 20.h , right: 20.r),
                clipBehavior: Clip.antiAlias,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.r),
                ),
                color: Colors.white,
                child:  Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.w),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.w,right: 10.w,top: 10.h,bottom: 10.h),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.phone),
                            SizedBox(width: 80.w,),
                            Text(
                              '0594258327',
                              style: GoogleFonts.cairo(
                                  fontSize:20.sp,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.email),
                            SizedBox(width: 80.w,),
                            Text(
                              'ayman@gmail.com',
                              style: GoogleFonts.cairo(
                                fontSize:20.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    'إضافة مهارة',
                    style: GoogleFonts.cairo(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),
                  ),
                ),
              ),

              TextField(
                controller: _experienceTextController,
                onSubmitted: (String value)=> _performSave(),
                textInputAction: TextInputAction.done,
                keyboardType: TextInputType.text,
                style: GoogleFonts.cairo(),
                maxLength: 15,
                decoration: InputDecoration(
                  counterText: '',
                  hintText: 'ادخل مهاراتك',
                  hintStyle: GoogleFonts.cairo(),
                  prefixIcon: Icon(Icons.work),
                  suffixIcon: IconButton(
                    onPressed: () =>_performSave(),
                    icon: Icon(Icons.save),
                  ),
                ),
              ),
              Wrap(
                spacing: 10,
                children: _experiences.map((e){
                  return Chip(
                    deleteIcon: Icon(Icons.close),
                    deleteIconColor: Colors.red.shade300,
                    onDeleted: ()=>_delete(e),
                    backgroundColor: Color(0xFF2B4865),
                    labelStyle: GoogleFonts.cairo(
                        color: Color(0xFFE8F9FD)
                    ),
                    elevation: 5,
                    avatar: Icon(Icons.work , size: 18,color: Color(0xFFE8F9FD),),
                    label: Text(e),
                  );
                }).toList(),
              ),
              //Skills Part
            ],
          ),
        ],
      ),
    );
  }
  void _delete(String experience){
    setState(()=> _experiences.remove(experience));
  }

  void _performSave(){
    if(_checkData()){
      _save();
    }
  }
  bool _checkData(){
    if(_experienceTextController.text.isNotEmpty){
      return true ;
    }
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Enter required data!'),
        backgroundColor: Colors.red,
      ),
    );
    return false;
  }

  void _save(){
    setState(()=> _experiences.add(_experienceTextController.text));
    _experienceTextController.clear();
  }

}
