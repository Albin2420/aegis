import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../home_screen.dart';

class TaskSubmissionPage extends StatelessWidget {
  final String taskId;
  final String title;
  final String description;
  final String assignedby;
  final String deadline;
  final bool isRework;
  final String elapsedTime;

  const TaskSubmissionPage({
    super.key,
    required this.taskId,
    required this.title,
    required this.description,
    required this.assignedby,
    required this.deadline,
    required this.isRework,
    required this.elapsedTime,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFF5F5F5),
        elevation: 0,
        title: Row(
          children: [
            ElevatedButton(
              onPressed: () {
                Get.back(result: true);
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(10),
                backgroundColor: Colors.white,
                elevation: 0,
                side: const BorderSide(color: Colors.black, width: 2),
              ),
              child: const Icon(Icons.arrow_back, color: Colors.black, size: 20),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title.toUpperCase(),
                style: TextStyle(
                  fontFamily: 'Wilker',
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: isRework ? const Color(0xFFB01919) : const Color(0xFF2632C2),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  border: const Border(
                    top: BorderSide(color: Colors.black, width: 2),
                    left: BorderSide(color: Colors.black, width: 2),
                    right: BorderSide(color: Colors.black, width: 3),
                    bottom: BorderSide(color: Colors.black, width: 3),
                  ),
                ),
                child: Center(
                  child: Text(
                    elapsedTime,
                    style: const TextStyle(
                      fontFamily: 'Wilker',
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "UPLOAD SCREENSHOT",
                style: TextStyle(
                  fontFamily: 'Wilker',
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  border: const Border(
                    top: BorderSide(color: Colors.black, width: 2),
                    left: BorderSide(color: Colors.black, width: 2),
                    right: BorderSide(color: Colors.black, width: 4),
                    bottom: BorderSide(color: Colors.black, width: 4),
                  ),
                ),
                child: const Center(
                  child: Icon(Icons.add, size: 24, color: Colors.black),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "LINK",
                style: TextStyle(
                  fontFamily: 'Wilker',
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  border: const Border(
                    top: BorderSide(color: Colors.black, width: 2),
                    left: BorderSide(color: Colors.black, width: 2),
                    right: BorderSide(color: Colors.black, width: 4),
                    bottom: BorderSide(color: Colors.black, width: 4),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'https://www.figma.com/design/...',
                    hintStyle: GoogleFonts.inter(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                  maxLines: 2,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "DESCRIPTION",
                style: TextStyle(
                  fontFamily: 'Wilker',
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                  border: const Border(
                    top: BorderSide(color: Colors.black, width: 2),
                    left: BorderSide(color: Colors.black, width: 2),
                    right: BorderSide(color: Colors.black, width: 4),
                    bottom: BorderSide(color: Colors.black, width: 4),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Create a user friendly logo design for the employee app called Aevora...',
                    hintStyle: GoogleFonts.inter(
                      fontSize: 13,
                      color: Colors.grey,
                    ),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                  maxLines: 5,
                ),
              ),
              const SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Get.offAll(() => const HomeScreen());
                },
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: const Center(
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(
                        fontFamily: 'Wilker',
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
