import 'package:accum_points_app/views/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TitleProfile extends StatelessWidget {
  final String title;
  const TitleProfile({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 57.h),
      child: Stack(
        children: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
          }, icon: Image.asset("assets/images/Path back.png")),
          Container(
            padding: EdgeInsets.only(top: 14.h),
            child: Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                ),
                ),
            ),
          ), 
        ],
      ),
    );
  }
}