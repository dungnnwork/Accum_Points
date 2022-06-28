import 'package:accum_points_app/size_config.dart';
import 'package:accum_points_app/views/component/background_page.dart';
import 'package:accum_points_app/views/screens/home_page/widgets/welcome.dart';
import 'package:flutter/material.dart';
import 'widgets/brands/brands.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: SizeConfig().screenWidth,
        height: SizeConfig().screenHeight,
        child: Stack(
          children: [
            const BackgroundPage(),
            Container(
              margin: EdgeInsets.only(top: getProportionateScreenHeight(14.24)),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Welcome(),
                    // Pageview
                    SizedBox(height: getProportionateScreenHeight(4.25)),
                    const Brands(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
