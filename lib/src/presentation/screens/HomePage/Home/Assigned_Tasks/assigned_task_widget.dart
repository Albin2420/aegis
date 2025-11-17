import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Page_Routes/widgets/assigned_task_view_page.dart';

class AssignedTaskWidget extends StatelessWidget {
  final bool showRework; // toggle REWORK tag & timer widget
  final bool isBlue; // toggle title color

  const AssignedTaskWidget({
    super.key,
    this.showRework = false,
    this.isBlue = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => AssignedTaskViewPage(
          taskId: "T001",
          title: "Logo Design",
          description:
          "Create the homepage UI with responsive layout for mobile and desktop view.",
          assignedby: "Adharsh",
          deadline: "12/11/2025",
          isRework: showRework,
        ));
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: const Color(0XFFFEFDFE),
          borderRadius: BorderRadius.circular(2),
          border: const Border(
            top: BorderSide(color: Colors.black, width: 2),
            left: BorderSide(color: Colors.black, width: 2),
            right: BorderSide(color: Colors.black, width: 4),
            bottom: BorderSide(color: Colors.black, width: 4),
          ),
        ),
        child: Stack(
          children: [
            const Positioned(
              right: -5,
              top: -5,
              child: Icon(Icons.north_east_outlined,
                  size: 21, color: Colors.black),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title
                Text(
                  "Logo Design",
                  style: TextStyle(
                    fontFamily: 'Wilker',
                    fontWeight: FontWeight.w900,
                    fontSize: 16,
                    color: isBlue
                        ? const Color(0XFF2349D1)
                        : const Color(0XFFA74646),
                  ),
                ),
                const SizedBox(height: 6),

                // Description
                Text(
                  "Create the homepage UI with responsive layout for mobile and desktop view.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.inter(
                    fontSize: 14,
                    color: Colors.black,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 10),

                // Deadline + REWORK tag
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        "Deadline - 12/12/25",
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w700,
                          fontSize: 13,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),

                    if (showRework)
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: const BoxDecoration(
                          border: Border(
                            top: BorderSide(color: Color(0XFFFF0000), width: 2),
                            left:
                            BorderSide(color: Color(0XFFFF0000), width: 2),
                            right:
                            BorderSide(color: Color(0XFFFF0000), width: 4),
                            bottom:
                            BorderSide(color: Color(0XFFFF0000), width: 4),
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
                        ),
                      ),
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
