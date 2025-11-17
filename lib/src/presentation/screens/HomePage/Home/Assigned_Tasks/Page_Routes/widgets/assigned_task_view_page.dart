import 'package:aegis/src/presentation/screens/HomePage/Home/Assigned_Tasks/Page_Routes/widgets/start_task_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../../controller/assignedtask/assigned_task_view_controller.dart';
import '../task_starting_page.dart';
import 'rework_timer_widget.dart';
import '../../../../home_screen.dart';

class AssignedTaskViewPage extends StatelessWidget {
  final String taskId;
  final String title;
  final String description;
  final String assignedby;
  final String deadline;
  final bool isRework;

  const AssignedTaskViewPage({
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
    final String tag = 'assigned_view_$taskId';
    Get.lazyPut<AssignedTaskViewController>(
          () => AssignedTaskViewController(),
      tag: tag,
    );
    final AssignedTaskViewController controller = Get.find<AssignedTaskViewController>(tag: tag);

    return Scaffold(
      backgroundColor: const Color(0XFFFEFDFE),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.off(() => const HomeScreen());
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
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
              const SizedBox(height: 8),
              if (isRework)
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Color(0XFFFF0000), width: 2),
                      left: BorderSide(color: Color(0XFFFF0000), width: 2),
                      right: BorderSide(color: Color(0XFFFF0000), width: 4),
                      bottom: BorderSide(color: Color(0XFFFF0000), width: 4),
                    ),
                  ),
                  child: const Text(
                    "REWORK",
                    style: TextStyle(
                      fontFamily: 'Wilker',
                      fontWeight: FontWeight.w700,
                      fontSize: 13,
                      color: Color(0XFFFF0000),
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              const SizedBox(height: 20),
              Obx(() {
                return controller.showTimer.value
                    ? const ReworkTimerWidget(taskId: '001', title: 'Logo Design', description: 'Create a user friendly logo design for the employee app called Aevora...', assignedby: 'Adharsh', deadline: '12/12/25',isRework: true,)
                    : const SizedBox.shrink();
              }),
              const SizedBox(height: 20),
              Text(
                description,
                style: GoogleFonts.inter(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 25),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.black, width: 2),
                    left: BorderSide(color: Colors.black, width: 2),
                    right: BorderSide(color: Colors.black, width: 4),
                    bottom: BorderSide(color: Colors.black, width: 4),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.description, size: 40, color: Color(0xFFFF5900)),
                    SizedBox(height: 8),
                    Text(
                      "DOCUMENTATION",
                      style: TextStyle(
                        fontFamily: 'Wilker',
                        color: Color(0xFFFF5900),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(color: Colors.black, width: 2),
                    left: BorderSide(color: Colors.black, width: 2),
                    right: BorderSide(color: Colors.black, width: 4),
                    bottom: BorderSide(color: Colors.black, width: 4),
                  ),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.person_2_outlined, size: 20, color: Colors.black),
                    const SizedBox(width: 8),
                    const Text(
                      'Assigned By - ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        assignedby.toUpperCase(),
                        style: const TextStyle(
                          fontFamily: 'Wilker',
                          fontWeight: FontWeight.w900,
                          fontSize: 15,
                          color: Colors.black,
                          letterSpacing: 1,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFD9D9),
                  border: const Border(
                    top: BorderSide(color: Color(0XFFD23E3E), width: 2),
                    left: BorderSide(color: Color(0XFFD23E3E), width: 2),
                    right: BorderSide(color: Color(0XFFD23E3E), width: 4),
                    bottom: BorderSide(color: Color(0XFFD23E3E), width: 4),
                  ),
                  borderRadius: BorderRadius.circular(2),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.access_time, size: 20, color: Color(0xFF971C1A)),
                    const SizedBox(width: 10),
                    Text(
                      'Deadline - ',
                      style: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: const Color(0xFF971C1A),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        deadline.isNotEmpty ? deadline : "Not specified",
                        style: const TextStyle(
                          fontFamily: 'Wilker',
                          fontWeight: FontWeight.w900,
                          fontSize: 14,
                          color: Color(0xFF971C1A),
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              GestureDetector(
                onTap: () {
                  Get.to(() => TaskStartPage(
                    taskId: taskId,
                    title: title,
                    description: description,
                    assignedby: assignedby,
                    deadline: deadline,
                    isRework: isRework,
                  ))?.then((result) {
                    if (result == true) {
                      controller.enableTimer();
                    }
                  });
                },
                child: const StartTaskButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
