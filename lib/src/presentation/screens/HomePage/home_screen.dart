import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../controller/navigation/nav_controller.dart';
import '../navbar/custom_bot_navbar.dart';
import 'home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = Get.put(NavigationController());

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return Scaffold(
      backgroundColor: Color(0XFFFEFDFE),
      body: SafeArea(
        child: Obx(() {
          return IndexedStack(
            index: navController.selectedIndex.value,
            children: [
              Home(),
              // CompletedTask(),
              // NotificationPage(),
              // ProfilePage(),
            ],
          );
        }),
      ),
      bottomNavigationBar: const CustomBottomNav(),
    );
  }
}