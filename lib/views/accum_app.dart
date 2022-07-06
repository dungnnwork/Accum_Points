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
  double width = 375.0;
  double height = 812.0;
  int seclectedIndex = 0;
  List<Widget> tapIcons = [
    Image.asset("assets/icons/icons_bottombar/home_black.png"),
    Image.asset("assets/icons/icons_bottombar/endow.png"),
    Image.asset("assets/icons/icons_bottombar/qrcode.png"),
    Image.asset("assets/icons/icons_bottombar/partner.png"),
    Image.asset("assets/icons/icons_bottombar/profile.png"),
  ];
  List<Widget> pages = [
    const HomePage(),
    const EndowPage(),
    const QRPage(),
    const PartnerPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return bodyApp();
  }

  bodyApp() {
    return Scaffold(
      bottomNavigationBar: bottomBar(),
      body: Container(
        width: width,
        height: 733.0,
        child: pages[seclectedIndex],
      ),
    );
  }

  Widget bottomBar() {
    return Container(
      width: width,
      height: 79.0,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 10.0,
            color: const Color(0xffd9d9d9).withOpacity(0.25),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xfffdfdfd),
          fixedColor: Colors.black,
          showSelectedLabels: true,
          currentIndex: seclectedIndex,
          onTap: onTapHandel,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/icons/icons_bottombar/home_black.png",
                color: activeItemColors,
              ),
              icon: tapIcons[0],
              label: "Trang chủ",
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/icons/icons_bottombar/endow.png",
                color: activeItemColors,
              ),
              icon: tapIcons[1],
              label: 'Ưu đãi',
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/icons/icons_bottombar/qrcode.png",
                color: activeItemColors,
              ),
              icon: tapIcons[2],
              label: 'Quét mã',
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/icons/icons_bottombar/partner.png",
                color: activeItemColors,
              ),
              icon: tapIcons[3],
              label: 'Đối tác',
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/icons/icons_bottombar/profile.png",
                color: activeItemColors,
              ),
              icon: tapIcons[4],
              label: 'Cá nhân',
            ),
          ],
        ),
      ),
    );
  }

  void onTapHandel(int index) {
    setState(() {
      seclectedIndex = index;
    });
  }
}
