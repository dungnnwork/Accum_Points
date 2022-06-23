import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
         fit: StackFit.loose,
         children: <Widget> [
           Container(
             color:const Color(0xffffd223),
           ),
           ClipRRect(
             borderRadius: const BorderRadius.only(
               topLeft: Radius.circular(20.0),
               topRight: Radius.circular(20.0),
             ),
             child: Container(
               padding:const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 15.0,),
               width: width,
               height: height*0.63,
               decoration:const BoxDecoration(
                 // borderRadius: BorderRadius.circular(20.0),
                 color:  Color(0xffffffff),
               ),
               child: Column(
                 children: [
                   Container(
                    padding:const EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0,),
                     child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                 const Text(
                         "Thương hiệu tích - tiêu điểm",
                         style:  TextStyle(
                           color:  Color(0xff000000),
                           fontWeight: FontWeight.bold,
                           fontSize: 16.0,
                         ),
                         ),
                         TextButton(
                           onPressed: (){},
                            child:const Text(
                             "Xem tất cả",
                             style: TextStyle(
                               color: Color(0xffe1b000),
                               fontSize: 12.0,
                             ),
                             ),
                            ),
                     ],
                     ),
                   ),
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
                     const   SizedBox(height: 5.0,),
                   Container(
                    padding:const EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0,),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                 const  Text(
                             "Săn ưu đãi",
                             style:  TextStyle(
                           color:  Color(0xff000000),
                           fontWeight: FontWeight.bold,
                           fontSize: 16.0,
                         ),
                         ),
                         TextButton(
                           onPressed: (){},
                           child:const Text(
                             "Xem tất cả",
                             style: TextStyle(
                               color: Color(0xffe1b000),
                               fontSize: 12.0,
                             ),
                             ),
                         ),
                       ],
                     ),
                   ),
                   Container(),
                 ],
           
               ),
             ),
           ),
           
         ],
       ),
    );
  }
}