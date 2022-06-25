import 'package:accum_points_app/constants.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> brands2 = [
    {
      "image"     : "assets/images/hello summer.png",
      "title"     : "Ưu đãi giảm 50.000 đồng",
      "nameBrand" : "The coffee house",
      "point"     : "assets/images/50 point.png",
    },
    {
      "image"     : "assets/images/super sale.png",
      "title"     : "Ưu đãi giảm 50.000 đồng",
      "nameBrand" : "Gemini",
      "point"     : "assets/images/200 points.png",
    },
    {
      "image"     : "assets/images/hello summer.png",
      "title"     : "Ưu đãi giảm 50.000 đồng",
      "nameBrand" : "The coffee house",
      "point"     : "assets/images/50 point.png",
    },
    {
      "image"     : "assets/images/super sale.png",
      "title"     : "Ưu đãi giảm 50.000 đồng",
      "nameBrand" : "Gemini",
      "point"     : "assets/images/200 points.png",
    },
  ];  
  
  List<Map<String, dynamic>> brands = [
    {
      "title" : "The coffee house",
      "image" : "assets/images/the coffee house.png",
    },
    {
      "title" : "Gemini coffee",
      "image" : "assets/images/Logo-Gemini-Coffee.png",
    },
    {
      "title" : "The coffee house",
      "image" : "assets/images/the coffee house.png",
    },
    {
      "title" : "Gemini coffee",
      "image" : "assets/images/Logo-Gemini-Coffee.png",
    },
  ];
  
  @override
  Widget build(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width  = MediaQuery.of(context).size.width;
    return Scaffold(
       body:Stack(
         alignment: AlignmentDirectional.bottomEnd,
         children: <Widget> [
           // start retangle 48
           Container(
            padding: EdgeInsets.only(top: height*0.042,),
            // height: height,
            // width: width,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only( bottom: height*0.63, right: width*0.02,),
                  height: height,
                  width: width,
                  decoration: const BoxDecoration(
                    color: buttonColors,
                  ),
                  // color: buttonColors,
                  child: Stack(
                    children: [
                      Image.asset("assets/images/Ellipse 14.png"),
                      Image.asset("assets/images/Ellipse 15.png"),
                      Image.asset("assets/images/Ellipse 16.png"),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: height*0.06,left: 19.0,right: 19.0,),
                  child: Column(
                    textDirection: TextDirection.ltr,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            child: Image.asset("assets/images/avatar.png"),
                          ),
              const       SizedBox(width: 18.0,),
                          Column(
                            textDirection: TextDirection.ltr,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                      const   Text(
                                "Xin chào Kim Ngân!",
                                style: TextStyle(
                                  fontFamily: "Open Sans",
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      const   SizedBox(height: 6.0,),
                              Row(
                                children: [
                         const    Text(
                                     "Tiêu chuẩn",
                                     style: TextStyle(
                                      fontFamily: "Open Sans",
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                     ),
                                     ),
                          const   SizedBox(width: 12.0,),
                                  Container(
                                    child: Image.asset("assets/images/Group 159.png"),
                                  ),
                                ],
                              ),
                            ],
                          ),
                const     SizedBox(width: 40.0,),
                          IconButton(
                            onPressed: (){},
                            icon: Image.asset(
                              "assets/images/notification.png",
                              width: 24.0,
                              height: 24.0,
                              ),
                            )

                        ],
                      ),
                      SizedBox(height: height*0.02,),
                      Image.asset(
                        "assets/images/Group 120.png",
                       width: width*0.9,
                       height: height*0.19,
                        ),
                    ],
                  ),
                ),
              ],
            ),
           ),
           // start retangle 26
           Container(
            padding: EdgeInsets.only(top: height*0.35,),
             child: SingleChildScrollView(
               child: ClipRRect(
                 borderRadius: const BorderRadius.only(
                   topLeft: Radius.circular(20.0),
                   topRight: Radius.circular(20.0),
                 ),
                 child: Container(
                   padding:const EdgeInsets.fromLTRB(15.0, 00.0, 0.0, 15.0,),
                   decoration:const BoxDecoration(
                     color: kBackgroundSecondsColors,
                   ),
                   child: Column(
                     children: [
                      // start text trademark
                       Container(
                        padding:const EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0,),
                         child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                     const Text(
                             "Thương hiệu tích - tiêu điểm",
                             style:  TextStyle(
                               color:  kTextTitleBigColors,
                               fontWeight: FontWeight.bold,
                               fontSize: 16.0,
                             ),
                             ),
                             TextButton(
                               onPressed: (){},
                                child:const Text(
                                 "Xem tất cả",
                                 style: TextStyle(
                                   color: kTextPrimaryColors,
                                   fontSize: 12.0,
                                 ),
                                 ),
                                ),
                         ],
                         ),
                       ),
                       // start image trademark
               const   SizedBox(height: 15.0,),
                       SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                           children: List.generate(brands.length, (index) => Container(
                            padding:const EdgeInsets.only(right: 15.0,),
                            decoration: BoxDecoration(
                              borderRadius:const BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                topRight: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  offset:const Offset(0, 4),
                                  blurRadius: 10.0,
                                  color: const Color(0xffffffff).withOpacity(0.16),
                                ),
                              ],
                              // border: Border.all(
                              //   style: BorderStyle.solid,
                              // ),
                            ),
                          
                             child: Column(
                               children: [
                                 Image.asset(
                                   brands[index]['image'],
                                   fit: BoxFit.cover,
                                   ),
                          const  SizedBox(height: 20.0,),
                                 Text(
                                   brands[index]['title'],
                                   style: const TextStyle(
                                     fontWeight: FontWeight.bold,
                                   ),
                                   ),       
                               ],
                             ),
                           )),
                         ),
                       ),
               const   SizedBox(height: 15.0,),
                       // start text preferential hunting
                       Container(
                        padding:const EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0,),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                     const  Text(
                                 "Săn ưu đãi",
                                 style:  TextStyle(
                               color:  kTextTitleBigColors,
                               fontWeight: FontWeight.bold,
                               fontSize: 16.0,
                             ),
                             ),
                             TextButton(
                               onPressed: (){},
                               child:const Text(
                                 "Xem tất cả",
                                 style: TextStyle(
                                   color:kTextPrimaryColors,
                                   fontSize: 12.0,
                                 ),
                                 ),
                             ),
                           ],
                         ),
                       ),
                       // start preferential hunting
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(brands2.length, (index) => 
                          Container(
                            padding:const EdgeInsets.all(7.0,),
                            child: Row(
                              children: [
                                Container(
                                  child: Image.asset(brands2[index]['image'],fit: BoxFit.cover,)),
                       const    SizedBox(width: 15.0,),
                                Container(
                                  // height: 83.0,
                                  child: Column(
                                    textDirection: TextDirection.ltr,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        brands2[index]['title'],
                                        style:const TextStyle(
                                          color: kTextTitleBigColors,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        ),
                             const    SizedBox(height: 12.0,),  
                                      Container(
                                        decoration:  BoxDecoration(
                                          color:const Color(0xfffff6d6),
                                          borderRadius: BorderRadius.circular(5.0),
                                        ),
                                        child: Text(
                                          brands2[index]['nameBrand'],
                                          style: const TextStyle(
                                            color: kTextPrimaryColors,
                                          ),
                                          ),
                                      ),  
                          const       SizedBox(height: 12.0,),
                                      Container(
                                      child: Image.asset(brands2[index]['point']),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )),
                        ),
                      ),
                     ],
                    ),
                 ),
               ),
             ),
           ),
           
         ],
       ),
    );
  }
}