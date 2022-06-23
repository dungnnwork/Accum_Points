import 'package:accum_points_app/constants.dart';
import 'package:accum_points_app/views/screens/endow_page/endow_page.dart';
import 'package:accum_points_app/views/screens/home_page/home_page.dart';
import 'package:accum_points_app/views/screens/partner_page/partner_page.dart';
import 'package:accum_points_app/views/screens/profile_page/profile_page.dart';
import 'package:accum_points_app/views/screens/qr_page/qr_page.dart';
import 'package:flutter/material.dart';


class AccumApp extends StatefulWidget {
  const AccumApp({Key? key}) : super(key: key);

  @override
  State<AccumApp> createState() => _AccumAppState();
}

class _AccumAppState extends State<AccumApp> {
  int seclectedIndex = 0;
  List<Widget> tapIcons = [
    Image.asset("assets/icons/home_black.png"),
    Image.asset("assets/icons/endow.png"),
    Image.asset("assets/icons/qrcode.png"),
    Image.asset("assets/icons/partner.png"),
    Image.asset("assets/icons/profile.png"),
  ];
  List<Widget> pages = [
   const HomePage(), const EndowPage(), const QRPage(), const PartnerPage(), const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return bodyApp();
  }
  bodyApp(){
    return Scaffold(
      bottomNavigationBar: bottomBar(),
      body: pages[seclectedIndex],
    );
  }
  Widget bottomBar(){
    return BottomNavigationBar(

      fixedColor: Colors.black,
      showSelectedLabels: true,
      currentIndex: seclectedIndex,
      onTap: onTapHandel,
      type: BottomNavigationBarType.fixed,
      items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "assets/icons/home_black.png",
              color: activeItemColors,
              ),
            icon: tapIcons[0],
            label: "Trang chủ",
            ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "assets/icons/endow.png",
              color: activeItemColors,
              ),
            icon: tapIcons[1],
            label: 'Ưu đãi',
            ),
          BottomNavigationBarItem(
            icon: tapIcons[2],
            label: 'Quét mã',
            ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "assets/icons/partner.png",
              color: activeItemColors,
              ),
            icon: tapIcons[3],
            label: 'Đối tác',
            ),
          BottomNavigationBarItem(
            activeIcon: Image.asset(
              "assets/icons/profile.png",
              color: activeItemColors,
              ),
            icon: tapIcons[4],
            label: 'Cá nhân',
            ),      
        ],
      );
  }
  void onTapHandel(int index){
    setState(() {
      seclectedIndex = index;
    });
  }
}