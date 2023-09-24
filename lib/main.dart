import 'package:api_post_task/src/UI/screens/Home/homeViewModel.dart';
import 'package:api_post_task/src/UI/screens/SplashScreen/splashScreen.dart';
import 'package:api_post_task/src/UI/screens/post_comment/getComm_ViewModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(400, 800),
        builder: (context, child) => MultiProvider(
              providers: [
                ChangeNotifierProvider(create: (_) => GetApiWithProvider()),
                ChangeNotifierProvider(create: (_) => HomeViewModel())
              ],
              child: GetMaterialApp(
                  debugShowCheckedModeBanner: false,
                  title: 'Flutter Demo',
                  theme: ThemeData(
                    colorScheme:
                        ColorScheme.fromSeed(seedColor: Colors.deepPurple),
                    useMaterial3: true,
                  ),
                  home: const SplashScreen()),
            ));
  }
}
