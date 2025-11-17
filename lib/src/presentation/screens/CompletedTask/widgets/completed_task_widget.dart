import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../controller/completedtask/completed_task_controller.dart';

class CompletedTaskWidget extends StatelessWidget {
  final int index;
  final String title;
  final String description;
  final String? completedTime;

  const CompletedTaskWidget({
    super.key,
    required this.index,
    required this.title,
    required this.description,
    this.completedTime,
  });

  // 🎨 Colors
  static const List<Color> backgroundColors = [
    Color(0XFFFFC2C3),
    Color(0XFFB2DFFF),
    Color(0XFFFFEDCF),
    Color(0XFFC9ADFF),
    Color(0XFFC1FDFF),
    Color(0XFFFBC1FF),
    Color(0XFFC2FFDA),
  ];

  static const List<Color> titleColors = [
    Color(0XFFF03E41),
    Color(0XFF2AA6F4),
    Color(0XFFFEA04E),
    Color(0XFFCD54F8),
    Color(0XFF27D2C4),
    Color(0XFFF34FFF),
    Color(0XFF44F03E),
  ];

  Color getBackgroundColorForIndex(int index) =>
      backgroundColors[index % backgroundColors.length];
  Color getTitleColorForIndex(int index) =>
      titleColors[index % titleColors.length];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CompletedTaskController());

    return Obx(() {
      final isExpanded = controller.isExpanded(index);

      return GestureDetector(
        onTap: () => controller.toggleExpansion(index),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            color: getBackgroundColorForIndex(index),
            borderRadius: BorderRadius.circular(5),
            border: const Border(
              top: BorderSide(color: Colors.black, width: 2),
              left: BorderSide(color: Colors.black, width: 2),
              right: BorderSide(color: Colors.black, width: 4),
              bottom: BorderSide(color: Colors.black, width: 4),
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Title + Arrow
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontFamily: 'Wilker',
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: getTitleColorForIndex(index),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  AnimatedRotation(
                    turns: isExpanded ? 0.5 : 0,
                    duration: const Duration(milliseconds: 300),
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // 🔹 Description (expands smoothly)
              AnimatedSize(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                child: ConstrainedBox(
                  constraints: isExpanded
                      ? const BoxConstraints()
                      : const BoxConstraints(maxHeight: 40),
                  child: Text(
                    description,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      color: Colors.black,
                      height: 1.3,
                    ),
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),

              // 🔹 Completed Time (only visible when expanded)
              if (isExpanded && completedTime != null) ...[
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/images/black_clock.png',
                      width: 20,
                      height: 20,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      completedTime!,
                      style: const TextStyle(
                        fontFamily: 'Wilker',
                        fontSize: 19,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
        ),
      );
    });
  }
}
