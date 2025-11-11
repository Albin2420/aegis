// import 'package:flutter/material.dart';
// import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:get/get.dart';
// import 'package:neuflo_learn/src/core/util/constants/app_constants.dart';
// import 'package:neuflo_learn/src/presentation/bindings/connectivity_binding.dart';
// import 'package:neuflo_learn/src/presentation/screens/splash/splash.dart';

// class NeufloLearn extends StatelessWidget {
//   const NeufloLearn({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Constant.init(context: context);
//     return GetMaterialApp(
//       // showPerformanceOverlay: true,
//       title: 'Neuflo',
//       debugShowCheckedModeBanner: false,
//       builder: EasyLoading.init(),
//       initialBinding: ConnectivityBinding(),
//       home: Splash(),
//     );
//   }
// }

import 'package:aegis/src/presentation/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aegis',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: const Color(0xFFFEFDFE),
      ),
      // Start with Splash Screen
      // home: const SplashScreen(),
      home: LoginScreen(),
      builder: EasyLoading.init(),
    );
  }
}