import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationWidget extends StatelessWidget {
  final String name;
  final String message;
  final String date;
  final Color avatarBackgroundColor;
  final String avatarImagePath;
  final bool isLast;
  final VoidCallback onTap;

  const NotificationWidget({
    super.key,
    required this.name,
    required this.message,
    required this.date,
    required this.avatarBackgroundColor,
    required this.avatarImagePath,
    this.isLast = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xFFFFD86D),
          border: Border(
            top: const BorderSide(color: Colors.black, width: 2),
            left: const BorderSide(color: Colors.black, width: 2),
            right: const BorderSide(color: Colors.black, width: 4),
            bottom: BorderSide(
              color: Colors.black,
              width: isLast ? 4 : 0, // No bottom border for non-last widgets
            ),
          ),
        ),
        child: Stack(
          children: [
            ListTile(
              contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              leading: CircleAvatar(
                backgroundColor: avatarBackgroundColor,
                child: Image.asset(
                  avatarImagePath,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                name,
                style: const TextStyle(
                  fontFamily: 'Wilker',
                  fontWeight: FontWeight.w900,
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                message,
                maxLines: 1, // 👈 Restrict to a single line
                overflow: TextOverflow.ellipsis, // 👈 Add "..."
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                  color: Colors.black,
                ),
              ),
            ),
            Positioned(
              top: 8,
              right: 8,
              child: Container(
                padding:
                const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFD86D),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Text(
                  date,
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
