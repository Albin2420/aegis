import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'PageRoutes/submitted_task_page.dart';

class SubmittedTasksWidget extends StatelessWidget {
  final int index;
  const SubmittedTasksWidget({
    super.key,
    required this.index,
  });

  static const List<Color> backgroundColors = [
    Color(0XFFFFC2C3), // LOGO DESIGN
    Color(0XFFB2DFFF), // HOMEPAGE DESIGN
    Color(0XFFFFEDCF), // LOGIN DESIGN
    Color(0XFFC9ADFF), // PROFILE DESIGN
    Color(0XFFC1FDFF), // NAVBAR DESIGN
    Color(0XFFFBC1FF), // NOTIFICATION DESIGN
    Color(0XFFC2FFDA), // DASHBOARD DESIGN
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

  static const List<String> titles = [
    "LOGO DESIGN",
    "HOMEPAGE DESIGN",
    "LOGIN DESIGN",
    "PROFILE DESIGN",
    "NAVBAR DESIGN",
    "NOTIFICATION DESIGN",
    "DASHBOARD DESIGN",
  ];

  static const List<String> descriptions = [
    "Create a user friendly Logo design for the employee app called aevora",
    "Create a user friendly Home page design for the employee app called aevora",
    "Create a user friendly Login design for the employee app called aevora",
    "Create a user friendly Profile design for the employee app called aevora",
    "Create a user friendly Navbar design for the employee app called aevora",
    "Create a user friendly Notification design for the employee app called aevora",
    "Create a user friendly Dashboard design for the employee app called aevora",
  ];

  Color getBackgroundColorForIndex(int index) =>
      backgroundColors[index % backgroundColors.length];

  Color getTitleColorForIndex(int index) =>
      titleColors[index % titleColors.length];

  String getTitleForIndex(int index) => titles[index % titles.length];

  String getDescriptionForIndex(int index) =>
      descriptions[index % descriptions.length];

  @override
  Widget build(BuildContext context) {
    final bgColor = getBackgroundColorForIndex(index);
    final titleColor = getTitleColorForIndex(index);
    final title = getTitleForIndex(index);
    final description = getDescriptionForIndex(index);

    return GestureDetector(
      onTap: () {
        Get.to(() => SubmittedTaskDetailPage(
          title: title,
          description: description,
          backgroundColor: bgColor,
          timeContainerColor: titleColor,
        ));
      },
      child: Container(
        width: 160, // Fixed width for square-like appearance
        height: 160, // Fixed height for square-like appearance
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(2),
          border: const Border(
            top: BorderSide(color: Colors.black, width: 2),
            left: BorderSide(color: Colors.black, width: 2),
            right: BorderSide(color: Colors.black, width: 4),
            bottom: BorderSide(color: Colors.black, width: 4),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
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
                  Text(
                    title,
                    style: TextStyle(
                      fontFamily: 'Wilker',
                      fontSize: 14,
                      fontWeight: FontWeight.w900,
                      color: titleColor,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),
                  Expanded(
                    child: Text(
                      description,
                      style: GoogleFonts.inter(
                        fontSize: 10,
                        color: Colors.black,
                        height: 1.2,
                      ),
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
