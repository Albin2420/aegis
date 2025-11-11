import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final VoidCallback onTap;

  const LoginButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        onPressed: onTap,
        child: const Text(
          'LOGIN',
          style: TextStyle(
            fontFamily: 'Wilker',
            fontSize: 18,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
