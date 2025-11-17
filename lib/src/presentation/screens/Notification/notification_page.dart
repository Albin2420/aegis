import 'dart:developer';
import 'package:aegis/src/presentation/screens/Notification/widgets/notification_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/navigation/nav_controller.dart';
import 'widgets/notification_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = Get.find<NavigationController>();

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Back Arrow
            IconButton(
              icon: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  border: Border.fromBorderSide(
                    BorderSide(color: Colors.black, width: 2),
                  ),
                ),
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 20,
                ),
              ),
              onPressed: () => navController.changeIndex(index: 0),
            ),
            const SizedBox(height: 10),
            // "NOTIFICATIONS" Title
            const Text(
              "NOTIFICATIONS",
              style: TextStyle(
                fontFamily: 'Wilker',
                fontSize: 24,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            // Notification List
            Column(
              children: [
                NotificationWidget(
                  name: "ALEENA",
                  message: "Profile page accepted by admin. You can start working on the next task.",
                  date: "05/11/2025",
                  avatarBackgroundColor: Colors.blue,
                  avatarImagePath: "assets/images/aleena.png",
                  isLast: false,
                  onTap: () {
                    log("Moving to the detail page for ALEENA");
                    Get.to(() => NotificationDetailPage());
                  },
                ),
                NotificationWidget(
                  name: "SREELAKSHMI",
                  message: "Home page design has been rejected. Please review the feedback and make necessary changes.",
                  date: "10/11/2025",
                  avatarBackgroundColor: Colors.pink,
                  avatarImagePath: "assets/images/sreelakshmi.png",
                  isLast: false,
                  onTap: () {
                    log("Moving to the detail page for SREELAKSHMI");
                    Get.to(() => NotificationDetailPage());
                  },
                ),
                NotificationWidget(
                  name: "ALAN",
                  message: "Rework required for Login page. The authentication flow needs to be simplified.",
                  date: "12/11/2025",
                  avatarBackgroundColor: Colors.purple,
                  avatarImagePath: "assets/images/alen.png",
                  isLast: false,
                  onTap: () {
                    log("Moving to the detail page for ALAN");
                    Get.to(() => NotificationDetailPage());
                  },
                ),
                NotificationWidget(
                  name: "ALBIN",
                  message: "New work has been added to your task list. Priority: High. Deadline: Nov 20.",
                  date: "17/11/2025",
                  avatarBackgroundColor: Colors.green,
                  avatarImagePath: "assets/images/albin.png",
                  isLast: true,
                  onTap: () {
                    log("Moving to the detail page for ALBIN");
                    Get.to(() => NotificationDetailPage());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
