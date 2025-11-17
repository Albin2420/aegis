import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationDetailPage extends StatelessWidget {
  const NotificationDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFDFE),
      body: Column(
        children: [
          // 🔙 Back button
          SafeArea(
            bottom: false,
            child: Container(
              color: const Color(0xFFFEFDFE),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
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
                  ),
                ],
              ),
            ),
          ),

          // 📄 Content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 26),
                  const Text(
                    "NOTIFICATIONS",
                    style: TextStyle(
                      fontFamily: 'Wilker',
                      fontSize: 24,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // 👤 User info
                  Row(
                    children: [
                      Container(
                        width: 48,
                        height: 48,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image:
                            AssetImage('assets/images/sreelakshmi.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        "USER",
                        style: TextStyle(
                          fontFamily: 'Wilker',
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),

                  // 🔔 Notifications list
                  Column(
                    children: [
                      // Notification 1
                      _notificationItem(
                        time: "10:00 AM",
                        text:
                        "Profile page accepted by admin. You can start working on the next task that has been added to your assigned tasks.",
                      ),
                      const SizedBox(height: 15),

                      // Notification 2
                      _notificationItem(
                        time: "Yesterday",
                        text: "Homepage under checking.",
                      ),
                      const SizedBox(height: 15),

                      // Notification 3
                      _notificationItem(
                        time: "Oct 10",
                        text:
                        "Profile page accepted by admin. You can start working on the next task.",
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// ✅ Reusable Notification Container Widget
  Widget _notificationItem({required String time, required String text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          time,
          style: GoogleFonts.inter(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: const Color(0xFFFFD86D),
            borderRadius: BorderRadius.circular(5),
            border: const Border(
              top: BorderSide(color: Colors.black, width: 2),
              left: BorderSide(color: Colors.black, width: 2),
              right: BorderSide(color: Colors.black, width: 4), // ✅ bold right border
              bottom: BorderSide(color: Colors.black, width: 4), // ✅ bold bottom border
            ),
          ),
          child: Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }
}
