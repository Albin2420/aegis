import 'package:aegis/src/presentation/screens/HomePage/home_screen.dart';
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
      // home: LoginScreen(),
      home: HomeScreen(),
      builder: EasyLoading.init(),
    );
  }
}