import 'package:aegis/src/presentation/screens/HomePage/Home/Assigned_Tasks/Page_Routes/widgets/assigned_task_view_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TaskStartPage extends StatelessWidget {
  const TaskStartPage({super.key});

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
              /// 🔙 Back Button
              Align(
                alignment: Alignment.topLeft,
                child: ElevatedButton(
                  onPressed: () {
                    Get.off(() => AssignedTaskViewPage(
                      taskId: '001',
                      title: 'Logo Design',
                      description: "Create the homepage UI with responsive layout for mobile and desktop view",
                      assignedby: 'Adharsh',
                      deadline: '12/12/25',
                      isRework: true,
                    ));
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

              /// 🧠 Title
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

              /// 🕓 Hardcoded GO! Text
              const Text(
                "3",
                style: TextStyle(
                  fontFamily: 'Wilker',
                  fontSize: 50,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),

              /// 💡 Bulb Image
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

              /// ⏱ Timer Box (Static)
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

                  /// ✨ Twinkle icon
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

              /// ✅ End Task Button
              // GestureDetector(
              //   onTap: () {
              //     Get.to(() => const TaskSubmissionPage());
              //   },
              //   child: Container(
              //     width: double.infinity,
              //     padding: const EdgeInsets.symmetric(vertical: 16),
              //     decoration: BoxDecoration(
              //       color: Colors.black,
              //       borderRadius: BorderRadius.circular(6),
              //     ),
              //     child: const Center(
              //       child: Text(
              //         "END TASK",
              //         style: TextStyle(
              //           fontFamily: 'Wilker',
              //           fontWeight: FontWeight.w900,
              //           fontSize: 16,
              //           color: Colors.white,
              //           letterSpacing: 1,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
