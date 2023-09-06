import 'package:api_post_task/src/UI/screens/SplashScreen/splashScreen.dart';
import 'package:api_post_task/src/UI/widgets/test.dart';
import 'package:api_post_task/src/UI/widgets/test2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'src/UI/screens/postApiWithLogin.dart/post_api_code.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(400, 800),
      builder: (context, child) => GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: PrivacyPolicy()),
    );
  }
}
