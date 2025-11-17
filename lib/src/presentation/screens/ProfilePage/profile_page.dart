import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../../controller/navigation/nav_controller.dart';
import '../../controller/profile/profile_controller.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final ProfileController profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      color: const Color(0XFFFEFDFE),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ---------------- APP BAR SECTION ----------------
          SafeArea(
            bottom: false,
            child: Container(
              color: const Color(0XFFFEFDFE),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                    onPressed: () {
                      final navController = Get.find<NavigationController>();
                      navController.changeIndex(index: 0); // Index 0 is Home
                    },
                  ),
                ],
              ),
            ),
          ),

          // ---------------- BODY (SCROLLABLE CONTENT) ----------------
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 14),

                  // PROFILE TITLE
                  Align(
                    alignment: Alignment.centerLeft,
                    child:  Text(
                      "PROFILE",
                      style: const TextStyle(
                        fontFamily: 'Wilker',
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // PROFILE PICTURE
                  Stack(
                    children: [
                      Container(
                        width: 80,
                        height: 80,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF81C784),
                        ),
                        child: const CircleAvatar(
                          backgroundImage:
                          AssetImage("assets/images/amana.png"),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          width: 22,
                          height: 22,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                          child: ClipOval(
                            child: Image.asset(
                              "assets/images/add_icon.png",
                              fit: BoxFit.cover,
                              width: 35,
                              height: 35,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // NAME (Responsive)
                  Text(
                    "AMANA",
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                      color: Colors.black,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // WALLET SECTION (Responsive)
                  Container(
                    width: double.infinity,
                    height: 125,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/reward.png"),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 15),
                          Text(
                            "YOUR WALLET BALANCE",
                            style: TextStyle(
                              fontFamily: 'Wilker',
                              fontSize: screenWidth * 0.028, // Responsive
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 7),
                          Text(
                            "₹ 10000.00",
                            style: TextStyle(
                              fontFamily: 'Wilker',
                              fontSize: screenWidth * 0.065, // Responsive
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  // HELP OPTION
                  Obx(
                        () => GestureDetector(
                      onTap: () {
                        profileController.selectedIndex.value = 0;
                      },
                      child: _profileOption(
                        label: "Help",
                        imagePath: "assets/images/profile.png",
                        isSelected: profileController.selectedIndex.value == 0,
                      ),
                    ),
                  ),

                  const SizedBox(height: 15), // Added spacing

                  // SETTINGS OPTION
                  Obx(
                        () => GestureDetector(
                      onTap: () {
                        profileController.selectedIndex.value = 1;
                      },
                      child: _profileOption(
                        label: "Settings",
                        imagePath: "assets/images/settings.png",
                        isSelected: profileController.selectedIndex.value == 1,
                      ),
                    ),
                  ),

                  const SizedBox(height: 15), // Added spacing

                  // LOGOUT OPTION
                  Obx(
                        () => GestureDetector(
                      onTap: () {
                        profileController.selectedIndex.value = 2;
                      },
                      child: _profileOption(
                        label: "Logout",
                        imagePath: "assets/images/logout.png",
                        isSelected: profileController.selectedIndex.value == 2,
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Reusable option widget
  Widget _profileOption({
    required String label,
    required String imagePath,
    required bool isSelected,
  }) {
    return Container(
      padding: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: isSelected ? const Color(0XFF888AF7) : Colors.white,
        borderRadius: BorderRadius.circular(2),
        border: const Border(
          top: BorderSide(color: Colors.black, width: 2),
          left: BorderSide(color: Colors.black, width: 2),
          right: BorderSide(color: Colors.black, width: 4),
          bottom: BorderSide(color: Colors.black, width: 4),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              // Icon with color filter when selected
              ColorFiltered(
                colorFilter: isSelected
                    ? const ColorFilter.mode(Colors.white, BlendMode.srcIn)
                    : const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Text(
                label,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: isSelected ? Colors.white : Colors.black,
                ),
              ),
            ],
          ),
          // Arrow container - violet background when selected
          Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: isSelected ? const Color(0XFF888AF7) : Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: isSelected ? Colors.white : Colors.black,
                width: 2,
              ),
            ),
            child: Icon(
              Icons.chevron_right,
              size: 20,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}