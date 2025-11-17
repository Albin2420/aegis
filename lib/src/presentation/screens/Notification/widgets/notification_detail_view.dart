import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../notification_page.dart';

class NotificationDetailView extends StatelessWidget {
  final PersonNotificationData personData;
  final VoidCallback onBack;

  const NotificationDetailView({
    super.key,
    required this.personData,
    required this.onBack,
  });

  @override
  Widget build(BuildContext context) {
    final reversedMessages = personData.messages.reversed.toList();
    return Scaffold(
      backgroundColor: const Color(0xFFFEFDFE),
      body: Column(
        children: [
          SafeArea(
            bottom: false,
            child: Container(
              color: const Color(0xFFFEFDFE),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: onBack,
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
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: personData.avatarBackgroundColor,
                        child: ClipOval(
                          child: Image.asset(
                            personData.avatarImagePath,
                            fit: BoxFit.cover,
                            width: 60,
                            height: 60,
                          ),
                        ),
                      ),
                      const SizedBox(width: 15),
                      Text(
                        personData.name.toUpperCase(),
                        style: const TextStyle(
                          fontFamily: 'Wilker',
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  ...reversedMessages.map((msg) => Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          msg.date,
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
                            borderRadius: BorderRadius.circular(2),
                            border: const Border(
                              top: BorderSide(color: Colors.black, width: 2),
                              left: BorderSide(color: Colors.black, width: 2),
                              right: BorderSide(color: Colors.black, width: 4),
                              bottom: BorderSide(color: Colors.black, width: 4),
                            ),
                          ),
                          child: Text(
                            msg.message,
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
