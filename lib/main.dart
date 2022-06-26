import 'package:accum_points_app/views/accum_app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

<<<<<<< HEAD
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: AccumApp(),
     theme: ThemeData(
      fontFamily: "Open Sans",
     ),
     
=======
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const AccumApp(),
      theme: ThemeData(
        fontFamily: "Open Sans",
      ),
>>>>>>> 7862dc448f1279905028abec32735b89b03cf9f9
    );
  }
}


