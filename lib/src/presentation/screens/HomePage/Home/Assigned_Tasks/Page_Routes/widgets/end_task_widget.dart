import 'package:flutter/material.dart';

class EndTaskWidget extends StatelessWidget {
  final VoidCallback onPressed;

  const EndTaskWidget({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(2),
          border: const Border(
            top: BorderSide(color: Colors.white, width: 2),
            left: BorderSide(color: Colors.white, width: 2),
            right: BorderSide(color: Colors.white, width: 4),
            bottom: BorderSide(color: Colors.white, width: 4),
          ),
        ),
        child: Center(
          child: const Text(
            "END TASK",
            style: TextStyle(
              fontFamily: 'Wilker',
              fontSize: 18,
              fontWeight: FontWeight.w900,
              color: Colors.white, // White text
            ),
          ),
        ),
      ),
    );
  }
}
