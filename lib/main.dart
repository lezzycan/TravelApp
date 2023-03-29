import 'package:bloc_travel_app/cubit/trv_cubit_logics.dart';
import 'package:bloc_travel_app/cubit/trv_cubits.dart';
import 'package:bloc_travel_app/pages/detail_page.dart';
import 'package:bloc_travel_app/pages/home_page.dart';
import 'package:bloc_travel_app/pages/nav_pages/main_page.dart';
import 'package:bloc_travel_app/pages/welcome_page.dart';
import 'package:bloc_travel_app/services/trv_data_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return  MaterialApp(
      title: 'Travel App',
      debugShowCheckedModeBanner: false,
      
      home: BlocProvider<TrvCubits>(
        create: (context) => TrvCubits(
          dataService: DataService()
        ),
        child:const TrvCubitLogic(),
      ),
    );
  }
}
