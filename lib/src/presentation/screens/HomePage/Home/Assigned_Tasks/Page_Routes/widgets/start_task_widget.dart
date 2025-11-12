import 'package:flutter/material.dart';

class StartTaskButton extends StatelessWidget {
  const StartTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(6),
      ),
      child: const Center(
        child: Text(
          "START TASK",
          style: TextStyle(
            fontFamily: 'Wilker',
            fontWeight: FontWeight.w900,
            fontSize: 16,
            color: Colors.white,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}

