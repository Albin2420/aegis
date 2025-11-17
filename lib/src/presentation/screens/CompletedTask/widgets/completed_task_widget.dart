import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CompletedTaskWidget extends StatefulWidget {
  final String title;
  final String description;
  final String? completedTime;
  final int index;

  const CompletedTaskWidget({
    super.key,
    required this.title,
    required this.description,
    this.completedTime,
    required this.index,
  });

  @override
  State<CompletedTaskWidget> createState() => _CompletedTaskWidgetState();
}

class _CompletedTaskWidgetState extends State<CompletedTaskWidget> {
  bool isExpanded = false;

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

  Color get backgroundColor =>
      backgroundColors[widget.index % backgroundColors.length];
  Color get titleColor => titleColors[widget.index % titleColors.length];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() => isExpanded = !isExpanded),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(5),
          border: const Border(
            top: BorderSide(color: Colors.black, width: 2),
            left: BorderSide(color: Colors.black, width: 2),
            right: BorderSide(color: Colors.black, width: 4),
            bottom: BorderSide(color: Colors.black, width: 4),
          ),
        ),
        child: Padding(
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
                      widget.title,
                      style: TextStyle(
                        fontFamily: 'Wilker',
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        color: titleColor,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  AnimatedRotation(
                    duration: const Duration(milliseconds: 300),
                    turns: isExpanded ? 0.5 : 0,
                    child: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),

              // 🔹 Description
              Text(
                widget.description,
                style: GoogleFonts.inter(
                  fontSize: 14,
                  color: Colors.black,
                  height: 1.3,
                ),
                maxLines: isExpanded ? null : 2,
                overflow:
                isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
              ),

              // 🔹 Completed Time
              if (isExpanded && widget.completedTime != null) ...[
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
                      widget.completedTime!,
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
      ),
    );
  }
}
