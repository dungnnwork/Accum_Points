import 'package:accum_points_app/constants.dart';
<<<<<<< HEAD
=======
import 'package:accum_points_app/size_config.dart';
>>>>>>> 7862dc448f1279905028abec32735b89b03cf9f9
import 'package:accum_points_app/views/screens/endow_page/endow_page.dart';
import 'package:accum_points_app/views/screens/home_page/home_page.dart';
import 'package:accum_points_app/views/screens/partner_page/partner_page.dart';
import 'package:accum_points_app/views/screens/profile_page/profile_page.dart';
import 'package:accum_points_app/views/screens/qr_page/qr_page.dart';
import 'package:flutter/material.dart';

<<<<<<< HEAD

class AccumApp extends StatefulWidget {
  const AccumApp({Key? key}) : super(key: key);

=======
class AccumApp extends StatefulWidget {
  const AccumApp({Key? key}) : super(key: key);
>>>>>>> 7862dc448f1279905028abec32735b89b03cf9f9
  @override
  State<AccumApp> createState() => _AccumAppState();
}

class _AccumAppState extends State<AccumApp> {
  int seclectedIndex = 0;
<<<<<<< HEAD
  List<Widget> tapIcons = [
    Image.asset("assets/icons/icons_bottombar/home_black.png"),
    Image.asset("assets/icons/icons_bottombar/endow.png"),
    Image.asset("assets/icons/icons_bottombar/qrcode.png"),
    Image.asset("assets/icons/icons_bottombar/partner.png"),
    Image.asset("assets/icons/icons_bottombar/profile.png"),
  ];
  List<Widget> pages = [
   const HomePage(), const EndowPage(), const QRPage(), const PartnerPage(), const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return bodyApp();
  }
  bodyApp(){
=======

  List<Widget> pages = [
    const HomePage(),
    const EndowPage(),
    const QRPage(),
    const PartnerPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return bodyApp();
  }

  Widget bodyApp() {
>>>>>>> 7862dc448f1279905028abec32735b89b03cf9f9
    return Scaffold(
      bottomNavigationBar: bottomBar(),
      body: pages[seclectedIndex],
    );
  }
<<<<<<< HEAD
  Widget bottomBar(){
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset:const Offset(0, -10),
            blurRadius: 10.0,
=======

  Widget bottomBar() {
    return Container(
      height: getProportionateScreenHeight(10.28),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 5.0,
>>>>>>> 7862dc448f1279905028abec32735b89b03cf9f9
            color: const Color(0xffd9d9d9).withOpacity(0.25),
          ),
        ],
      ),
      child: ClipRRect(
<<<<<<< HEAD
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        child: BottomNavigationBar(
          backgroundColor:const Color(0xfffdfdfd),
=======
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(getProportionateScreenWidth(37.5)),
          topRight: Radius.circular(getProportionateScreenWidth(37.5)),
        ),
        child: BottomNavigationBar(
          backgroundColor: const Color(0xfffdfdfd),
>>>>>>> 7862dc448f1279905028abec32735b89b03cf9f9
          fixedColor: Colors.black,
          showSelectedLabels: true,
          currentIndex: seclectedIndex,
          onTap: onTapHandel,
          type: BottomNavigationBarType.fixed,
<<<<<<< HEAD
          items:  <BottomNavigationBarItem>[
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
  void onTapHandel(int index){
=======
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/icons/icons_bottombar/home_black.png",
                color: activeItemColors,
              ),
              icon: Image.asset("assets/icons/icons_bottombar/home_black.png"),
              label: "Trang chủ",
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/icons/icons_bottombar/endow.png",
                color: activeItemColors,
              ),
              icon: Image.asset("assets/icons/icons_bottombar/endow.png"),
              label: 'Ưu đãi',
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/icons/icons_bottombar/qrcode.png",
                color: activeItemColors,
              ),
              icon: Image.asset("assets/icons/icons_bottombar/qrcode.png"),
              label: 'Quét mã',
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/icons/icons_bottombar/partner.png",
                color: activeItemColors,
              ),
              icon: Image.asset("assets/icons/icons_bottombar/partner.png"),
              label: 'Đối tác',
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                "assets/icons/icons_bottombar/profile.png",
                color: activeItemColors,
              ),
              icon: Image.asset("assets/icons/icons_bottombar/profile.png"),
              label: 'Cá nhân',
            ),
          ],
        ),
      ),
    );
  }

  void onTapHandel(int index) {
>>>>>>> 7862dc448f1279905028abec32735b89b03cf9f9
    setState(() {
      seclectedIndex = index;
    });
  }
<<<<<<< HEAD
  
}
=======
}
>>>>>>> 7862dc448f1279905028abec32735b89b03cf9f9
