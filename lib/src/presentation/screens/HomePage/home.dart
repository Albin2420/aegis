import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0XFFFEFDFE),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 50,
              left: 20,
              right: 20,
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Profile Row
                Row(
                  children: [
                    Container(
                      width: 88,
                      height: 88,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/amana.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 40),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "AMANA",
                          style: const TextStyle(
                            fontFamily: 'Wilker',
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "JUNIOR DESIGNER",
                          style: const TextStyle(
                            fontFamily: 'Wilker',
                            color: Color(0xFF959292),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                // Assigned Tasks Title
                Text(
                  "ASSIGNED TASKS",
                  style: const TextStyle(
                    fontFamily: 'Wilker',
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 15),
                // AssignedTaskWidget(
                //   title: 'LOGO DESIGN',
                //   desc: 'Create a user-friendly logo design for the employee app called Aevora. The logo should reflect simplicity, modernity, and be memorable across all use cases.',
                //   date: '20/10/2025',
                //   showRework: true, assignedBy: 'ADARSH', taskId: 'task_001',
                // ),
                // const SizedBox(height: 10),
                // AssignedTaskWidget(
                //   title: 'LOGO DESIGN',
                //   desc: 'Create a user-friendly logo design for the employee app called Aevora. The logo should reflect simplicity, modernity, and be memorable across all use cases.',
                //   date: '20/10/2025',
                //   showRework: false, assignedBy: 'ARUN', taskId: 'task_002',
                // ),
                const SizedBox(height: 20),
                // Submitted Tasks Title
                Text(
                  "SUBMITTED TASKS",
                  style: const TextStyle(
                    fontFamily: 'Wilker',
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 15),
                //  Show only pending tasks (not approved yet)
                // pendingTasks.isNotEmpty
                //     ? GridView.builder(
                //   shrinkWrap: true,
                //   physics: const NeverScrollableScrollPhysics(),
                //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                //     crossAxisCount: 2,
                //     crossAxisSpacing: 15,
                //     mainAxisSpacing: 15,
                //     childAspectRatio: 0.85,
                //   ),
                //   itemCount: pendingTasks.length,
                //   itemBuilder: (context, index) {
                //     final task = pendingTasks[index];
                //     return SubmittedTasksWidget(
                //       index: submittedTasks.indexOf(task),
                //       title: task.title,
                //       description: task.description,
                //     );
                //   },
                // )
                //     : Center(
                //   child: Text(
                //     "No pending tasks!",
                //     style: GoogleFonts.montserrat(
                //       fontSize: 14,
                //       color: Colors.black54,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}