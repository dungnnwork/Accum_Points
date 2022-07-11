import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyEndowDetail extends StatefulWidget {
  const MyEndowDetail({Key? key}) : super(key: key);

  @override
  State<MyEndowDetail> createState() => _MyEndowDetailState();
}

class _MyEndowDetailState extends State<MyEndowDetail> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
      return Container(
        margin: EdgeInsets.only(top: 250.h),
        child: TabBar(
          controller: tabController,
          tabs: [
                Text("Quà tặng", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),),
                Text("Đang có", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),),
                Text("Đã sử dụng", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),),
                Text("Hết hạn", style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),),
          ]
          ),
    );
  }
}