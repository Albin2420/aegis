import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class SubmittedTaskDetailPage extends StatelessWidget {
  final String title;
  final String description;
  final Color backgroundColor;
  final Color timeContainerColor;

  const SubmittedTaskDetailPage({
    super.key,
    required this.title,
    required this.description,
    required this.backgroundColor,
    required this.timeContainerColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () => Get.back(),
                icon: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 24,
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                title.toUpperCase(),
                style: const TextStyle(
                  fontFamily: 'Wilker',
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.black, // fixed to black
                ),
              ),
              const SizedBox(height: 20),

              // ⏱️ Time Container
              Container(
                width: double.infinity,
                //padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: timeContainerColor,
                  borderRadius: BorderRadius.circular(50),
                  border: const Border(
                    top: BorderSide(color: Colors.black, width: 1),
                    left: BorderSide(color: Colors.black, width: 1),
                    right: BorderSide(color: Colors.black, width: 4),
                    bottom: BorderSide(color: Colors.black, width: 4),
                  ),
                ),
                child: Center(
                  child: Text(
                    "05:10:32",
                    style: const TextStyle(
                      fontFamily: 'Wilker',
                      fontSize: 45,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // 🖼️ Screenshot
              Text(
                "SCREENSHOT",
                style: const TextStyle(
                  fontFamily: 'Wilker',
                  fontWeight: FontWeight.w900,
                  fontSize: 14,
                  color: Colors.black, // optional, add if needed
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: const Border(
                    top: BorderSide(color: Colors.black, width: 1),
                    left: BorderSide(color: Colors.black, width: 1),
                    right: BorderSide(color: Colors.black, width: 4),
                    bottom: BorderSide(color: Colors.black, width: 4),
                  ),
                  // borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: AssetImage("assets/images/submitted_task_sc.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 25),
              Text(
                "LINK",
                style: const TextStyle(
                  fontFamily: 'Wilker',
                  fontWeight: FontWeight.w900,
                  fontSize: 14,
                  color: Colors.black, // optional
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: const Border(
                    top: BorderSide(color: Colors.black, width: 1),
                    left: BorderSide(color: Colors.black, width: 1),
                    right: BorderSide(color: Colors.black, width: 4),
                    bottom: BorderSide(color: Colors.black, width: 4),
                  ),
                  color: Colors.white,
                ),
                child: Text(
                  "https://www.figma.com/design/wROabytN9HGQrEgLeG7GlO/Aegis",
                  style: GoogleFonts.inter(
                    fontSize: 12,
                    color: Colors.blueAccent,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),

              const SizedBox(height: 25),
              Text(
                "DESCRIPTION",
                style: const TextStyle(
                  fontFamily: 'Wilker',
                  fontWeight: FontWeight.w900,
                  fontSize: 14,
                  color: Colors.black, // optional
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: const Border(
                    top: BorderSide(color: Colors.black, width: 1),
                    left: BorderSide(color: Colors.black, width: 1),
                    right: BorderSide(color: Colors.black, width: 4),
                    bottom: BorderSide(color: Colors.black, width: 4),
                  ),
                ),
                child: Text(
                  description,
                  style: GoogleFonts.inter(fontSize: 13, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

