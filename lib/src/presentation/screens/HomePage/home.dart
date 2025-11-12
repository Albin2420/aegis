import 'package:aegis/src/presentation/screens/HomePage/Home/Assigned_Tasks/assigned_task_widget.dart';
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
                /// 👤 Profile Row
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
                      children: const [
                        Text(
                          "AMANA",
                          style: TextStyle(
                            fontFamily: 'Wilker',
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Text(
                          "JUNIOR DESIGNER",
                          style: TextStyle(
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

                const SizedBox(height: 18),

                /// 🧾 Assigned Tasks Title
                const Text(
                  "ASSIGNED TASKS",
                  style: TextStyle(
                    fontFamily: 'Wilker',
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),

                const SizedBox(height: 10),

                // Normal (blue)
                AssignedTaskWidget(isBlue: true, showRework: false),
                const SizedBox(height: 15),
                // Rework (red-brown title + tag)
                AssignedTaskWidget(isBlue: false, showRework: true),

                const SizedBox(height: 15),
                /// 📦 Submitted Tasks Title (Placeholder)
                const Text(
                  "SUBMITTED TASKS",
                  style: TextStyle(
                    fontFamily: 'Wilker',
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 15),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
