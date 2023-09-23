// import 'package:flutter/material.dart';

// import 'package:flutter_screenutil/flutter_screenutil.dart';

// class HomeScreensItems extends StatefulWidget {
//   const HomeScreensItems({super.key});

//   @override
//   State<HomeScreensItems> createState() => _HomeScreensItemsState();
// }

// class _HomeScreensItemsState extends State<HomeScreensItems> {
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return SafeArea(
//       child: Scaffold(
//         body: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Container(
//                 height: 200.sp,
//                 decoration: BoxDecoration(
//                     color: Colors.tealAccent.shade200,
//                     // image:  DecorationImage(
//                     //     image: NetworkImage(
//                     //         '')),
//                     borderRadius: const BorderRadius.only(
//                         bottomLeft: Radius.circular(24),
//                         bottomRight: Radius.circular(24))),
//               ),
//               Padding(
//                 padding: EdgeInsets.only(left: 24.sp, right: 35.sp, top: 30.sp),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Dinner',
//                       style: TextStyle(
//                           fontSize: 20.sp, fontWeight: FontWeight.bold),
//                     ),
//                     SizedBox(
//                       height: 8.sp,
//                     ),
//                     Row(
//                       children: [
//                         Icon(
//                           Icons.alarm,
//                           size: 20.sp,
//                         ),
//                         SizedBox(
//                           width: 8.sp,
//                         ),
//                         Text(
//                           '15 mint',
//                           style: TextStyle(
//                               fontSize: 12.sp,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.grey),
//                         ),
//                         SizedBox(
//                           width: 16.sp,
//                         ),
//                         Icon(
//                           Icons.fireplace_outlined,
//                           size: 20.sp,
//                         ),
//                         SizedBox(
//                           width: 8.sp,
//                         ),
//                         Text(
//                           '265 KCal',
//                           style: TextStyle(
//                               fontSize: 12.sp,
//                               fontWeight: FontWeight.w600,
//                               color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 24.sp,
//                     ),
//                     Text(
//                       'Information',
//                       style: TextStyle(
//                           fontSize: 20.sp, fontWeight: FontWeight.w700),
//                     ),
//                     SizedBox(
//                       height: 10.sp,
//                     ),
//                     Text(
//                       'Lorem ipsum dolor sit amet consectetur. At orci erat bibendum a et urna malesuada quisque sit. Ut aliquam diam amet et imperdiet odio arcu. In vulputate vitae malesuada tristique ultrices quis sed dignissim. Lectus a non dictum vivamus ullamcorper elementum. Ornare a nisl amet amet adipiscing scelerisque.  ',
//                       style: TextStyle(
//                           fontSize: 14.sp, fontWeight: FontWeight.w400),
//                     ),
//                     SizedBox(
//                       height: 24.sp,
//                     ),
//                     SizedBox(
//                       height: 10.sp,
//                     ),
//                     Text(
//                       'Lorem ipsum dolor sit amet consectetur. At orci erat bibendum a et urna malesuada quisque sit. Ut aliquam diam amet et imperdiet odio arcu. In vulputate vitae malesuada tristique ultrices quis sed dignissim. Lectus a non dictum vivamus ullamcorper elementum. Ornare a nisl amet amet adipiscing scelerisque.  ',
//                       style: TextStyle(
//                           fontSize: 14.sp, fontWeight: FontWeight.w400),
//                     ),
//                     SizedBox(
//                       height: 24.sp,
//                     ),
//                     Text(
//                       'Explore more',
//                       style: TextStyle(
//                           fontSize: 20.sp, fontWeight: FontWeight.w700),
//                     ),
//                     SizedBox(
//                       height: height * 0.4,
//                       child: ListView.builder(
//                           scrollDirection: Axis.horizontal,
//                           itemCount: 5,
//                           itemBuilder: (BuildContext context, index) {
//                             return Padding(
//                               padding: const EdgeInsets.only(
//                                   top: 22, bottom: 40, right: 10),
//                               child: Container(
//                                 height: height * 0.242,
//                                 width: 200,
//                                 decoration: BoxDecoration(
//                                     color: Colors.amber,
//                                     borderRadius: BorderRadius.circular(15)),
//                               ),
//                             );
//                           }),
//                     )
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
