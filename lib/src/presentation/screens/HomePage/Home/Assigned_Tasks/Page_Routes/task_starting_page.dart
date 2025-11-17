import 'package:aegis/src/presentation/screens/HomePage/Home/Assigned_Tasks/Page_Routes/task_submission_page.dart';
import 'package:aegis/src/presentation/screens/HomePage/Home/Assigned_Tasks/Page_Routes/widgets/end_task_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskStartPage extends StatelessWidget {
  final String taskId;
  final String title;
  final String description;
  final String assignedby;
  final String deadline;
  final bool isRework;

  const TaskStartPage({
    super.key,
    required this.taskId,
    required this.title,
    required this.description,
    required this.assignedby,
    required this.deadline,
    required this.isRework,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: ElevatedButton(
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
                  child: const Icon(Icons.arrow_back, color: Colors.black),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "YOUR TASK WILL START IN",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Wilker',
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 5),
              const Text(
                "3",
                style: TextStyle(
                  fontFamily: 'Wilker',
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              Container(
                width: 80,
                height: 80,
                margin: const EdgeInsets.only(right: 8),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/bulb.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    decoration: BoxDecoration(
                      border: const Border(
                        top: BorderSide(color: Colors.black, width: 2),
                        left: BorderSide(color: Colors.black, width: 2),
                        right: BorderSide(color: Colors.black, width: 4),
                        bottom: BorderSide(color: Colors.black, width: 4),
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Center(
                      child: Text(
                        "05:10:32",
                        style: TextStyle(
                          fontFamily: 'Wilker',
                          fontSize: 45,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -36,
                    left: 20,
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/twinkle.png'),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              EndTaskWidget(
                onPressed: () {
                  Get.to(() => TaskSubmissionPage(
                    taskId: taskId,
                    title: title,
                    description: description,
                    assignedby: assignedby,
                    deadline: deadline,
                    isRework: isRework,
                    elapsedTime: '05:10:32',
                  ))?.then((result) {
                    if (result == true) {
                      Get.back(result: true);
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
