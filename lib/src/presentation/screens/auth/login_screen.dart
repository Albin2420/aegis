import 'package:aegis/src/presentation/screens/auth/widgets/email_widget.dart';
import 'package:aegis/src/presentation/screens/auth/widgets/login_widget.dart';
import 'package:aegis/src/presentation/screens/auth/widgets/password_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import '../../controller/Auth/auth_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Register AuthController (no logic inside)
    final authController = Get.put(AuthController());

    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    bool rememberMe = false; // static checkbox value

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          /// 🌄 Background Image
          Positioned.fill(
            child: Image.asset(
              'assets/images/login.png',
              fit: BoxFit.cover,
            ),
          ),

          /// 🧱 Foreground content
          SafeArea(
            child: Column(
              children: [
                // Title section
                Container(
                  width: double.infinity,
                  height: 300,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'LOGIN',
                        style: TextStyle(
                          fontFamily: 'Wilker',
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 60),
                    ],
                  ),
                ),

                // Login form
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),

                      // Email input
                      EmailTextField(controller: emailController),
                      const SizedBox(height: 20),

                      // Password input
                      PasswordTextField(controller: passwordController),
                      const SizedBox(height: 10),

                      // ✅ Remember Me + Forgot Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 28,
                                height: 28,
                                child: Checkbox(
                                  value: rememberMe,
                                  onChanged: (val) {},
                                  side: const BorderSide(
                                    color: Colors.black,
                                    width: 2,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(2),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 2),
                              Text(
                                'Remember me',
                                style: GoogleFonts.inter(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.snackbar(
                                'Info',
                                'Password reset feature coming soon!',
                                backgroundColor: Colors.blue.withOpacity(0.7),
                                colorText: Colors.white,
                              );
                            },
                            child: Text(
                              'Forgot Password?',
                              style: GoogleFonts.inter(
                                fontSize: 15,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 35),

                      // ✅ Login button (no GetX logic)
                      LoginButton(),

                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
