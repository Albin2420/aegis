import 'package:flutter/material.dart';

class ReworkTimerWidget extends StatelessWidget {
  const ReworkTimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Play + Time
        Row(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 20,
              ),
            ),
            const SizedBox(width: 8),
            const Text(
              "05:10:32",
              style: TextStyle(
                fontFamily: 'Wilker',
                fontWeight: FontWeight.w900,
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ],
        ),

        // Right Arrow
        Container(
          width: 32,
          height: 32,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(6),
          ),
          child: const Icon(
            Icons.arrow_forward_ios_rounded,
            size: 16,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
