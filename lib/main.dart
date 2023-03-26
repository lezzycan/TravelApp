import 'package:bloc_travel_app/pages/detail_page.dart';
import 'package:bloc_travel_app/pages/home_page.dart';
import 'package:bloc_travel_app/pages/nav_pages/main_page.dart';
import 'package:bloc_travel_app/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(
    SystemUiMode.manual,
    overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
  ).then(((_) => runApp(
        ScreenUtilInit(
          designSize: const Size(375, 812),
          splitScreenMode: true,
         
          builder: (((_, __) => const MyApp())),
        ),
      )));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      
      home: DetailPage(),
    );
  }
}
