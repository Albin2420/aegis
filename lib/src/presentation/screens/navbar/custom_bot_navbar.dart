import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/navigation/nav_controller.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final navController = Get.find<NavigationController>();

    final List<IconData> icons = [
      Icons.home_filled,
      Icons.check_circle,
      Icons.notifications,
      Icons.person,
    ];

    final List<Color> activeColors = [
      const Color(0xFFFE9494),
      const Color(0xFFA6F4A6),
      const Color(0xFFFFD86D),
      const Color(0xFF888AF7),
    ];

    return Obx(() {
      return Container(
        height: 70,
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Colors.black, width: 2),
            left: BorderSide(color: Colors.black, width: 2),
            right: BorderSide(color: Colors.black, width: 2),
            bottom: BorderSide(color: Colors.black, width: 4),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: List.generate(icons.length, (index) {
            final bool isSelected = navController.selectedIndex.value == index;

            return GestureDetector(
              onTap: () => navController.changeIndex(index: index),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: 44,
                height: 44,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: isSelected ? activeColors[index] : Colors.transparent,
                  borderRadius: BorderRadius.circular(6),
                  border: isSelected
                      ? const Border(
                    top: BorderSide(color: Colors.black, width: 2),
                    left: BorderSide(color: Colors.black, width: 2),
                    right: BorderSide(color: Colors.black, width: 4),
                    bottom: BorderSide(color: Colors.black, width: 4),
                  )
                      : null,
                ),
                child: Icon(icons[index], color: Colors.black, size: 28),
              ),
            );
          }),
        ),
      );
    });
  }
}
