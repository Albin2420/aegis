import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/Notification/notification_controller.dart';
import '../../controller/navigation/nav_controller.dart';
import 'widgets/notification_detail_view.dart';
import 'widgets/notification_widget.dart';

class NotificationMessage {
  final String date;
  final String message;
  NotificationMessage({required this.date, required this.message});
}

class PersonNotificationData {
  final String name;
  final String avatarImagePath;
  final Color avatarBackgroundColor;
  final List<NotificationMessage> messages;
  PersonNotificationData({
    required this.name,
    required this.avatarImagePath,
    required this.avatarBackgroundColor,
    required this.messages,
  });
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final notifController = Get.put(NotificationController());
    final navController = Get.find<NavigationController>();

    final allNotifications = [
      PersonNotificationData(
        name: "ALEENA",
        avatarImagePath: "assets/images/aleena.png",
        avatarBackgroundColor: Colors.blue,
        messages: [
          NotificationMessage(
            date: "05/11/2025",
            message: "Profile page accepted by admin. You can start working on the next task.",
          ),
          NotificationMessage(
            date: "12/11/2025",
            message: "Your task submission is under review by the team lead.",
          ),
          NotificationMessage(
            date: "16/11/2025",
            message: "New design guidelines have been updated. Please check the documentation.",
          ),
        ],
      ),
      PersonNotificationData(
        name: "SREELAKSHMI",
        avatarImagePath: "assets/images/sreelakshmi.png",
        avatarBackgroundColor: Colors.pink,
        messages: [
          NotificationMessage(
            date: "10/11/2025",
            message: "Home page design has been rejected. Please review the feedback and make necessary changes.",
          ),
          NotificationMessage(
            date: "15/11/2025",
            message: "Admin has requested revision on the color scheme for the landing page.",
          ),
        ],
      ),
      PersonNotificationData(
        name: "ALAN",
        avatarImagePath: "assets/images/alen.png",
        avatarBackgroundColor: Colors.purple,
        messages: [
          NotificationMessage(
            date: "12/11/2025",
            message: "Rework required for Login page. The authentication flow needs to be simplified.",
          ),
          NotificationMessage(
            date: "16/11/2025",
            message: "Team lead has added comments on your UI design. Please check and update.",
          ),
        ],
      ),
      PersonNotificationData(
        name: "ALBIN",
        avatarImagePath: "assets/images/albin.png",
        avatarBackgroundColor: Colors.green,
        messages: [
          NotificationMessage(
            date: "17/11/2025",
            message: "New work has been added to your task list. Priority: High. Deadline: Nov 20.",
          ),
          NotificationMessage(
            date: "17/11/2025",
            message: "Your settings page implementation was excellent. Keep up the good work!",
          ),
        ],
      ),
    ];

    return Obx(() {
      if (notifController.isDetailView.value && notifController.selectedPersonData.value != null) {
        return NotificationDetailView(
          personData: notifController.selectedPersonData.value!,
          onBack: notifController.showList,
        );
      } else {
        return Scaffold(
          backgroundColor: const Color(0xFFFEFDFE),
          body: SafeArea(
            child: SingleChildScrollView(
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
                      children: List.generate(allNotifications.length, (index) {
                        final person = allNotifications[index];
                        return NotificationWidget(
                          name: person.name,
                          message: person.messages.first.message,
                          date: person.messages.first.date,
                          avatarBackgroundColor: person.avatarBackgroundColor,
                          avatarImagePath: person.avatarImagePath,
                          isLast: index == allNotifications.length - 1,
                          onTap: () => notifController.showDetail(person),
                        );
                      }),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }
    });
  }
}
