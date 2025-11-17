import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/navigation/nav_controller.dart';
import 'widgets/completed_task_widget.dart';

class CompletedTask extends StatelessWidget {
  const CompletedTask({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = Get.find<NavigationController>();

    // Example hardcoded list (you can replace it with real data)
    final tasks = [
      {
        'title': 'Finish UI Design',
        'description':
        'Completed the design for the new dashboard layout with animations.',
        'completedTime': '12:45:01',
      },
      {
        'title': 'Team Meeting',
        'description': 'Discussed project milestones and deadlines.',
        'completedTime': '10:30:20',
      },
      {
        'title': 'Bug Fixing',
        'description':
        'Resolved login issue and optimized database queries for performance.',
        'completedTime': '03:15:36',
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0XFFFEFDFE),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🔹 Back Arrow
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

                // 🔹 "COMPLETED TASKS" Title (below arrow, left-aligned)
                const Text(
                  "COMPLETED TASKS",
                  style: TextStyle(
                    fontFamily: 'Wilker',
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.black,
                  ),
                ),

                const SizedBox(height: 10),

                // 🔹 Task List
                ListView.builder(
                  itemCount: tasks.length,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final task = tasks[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: CompletedTaskWidget(
                        index: index,
                        title: task['title']!,
                        description: task['description']!,
                        completedTime: task['completedTime'],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
