import 'package:flutter/material.dart';
import 'package:grow_th/core/theme/app_theme.dart';
import 'package:grow_th/presentation/profile/profile_widget/smallbutton.dart';
import 'package:grow_th/widgets/custom_textfield.dart';

class Profileedit extends StatelessWidget {
  const Profileedit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(gradient: AppTheme.backgroundGradient),
        child: PopScope(
          canPop: true,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 60),
                  const Text(
                    "Profile",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 30),

                  // --- Stack for Profile Image & Edit Icon ---
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      // Profile Image
                      GestureDetector(
                        onTap: () {
                          print("Change Profile Picture");
                        },
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Colors.white24,
                          child: ClipOval(
                            child: Image.asset(
                              "assets/image/Ellipse 3.png",
                              height: 110,
                              width: 110,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(
                                    Icons.person,
                                    size: 60,
                                    color: Colors.white,
                                  ),
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 5,
                        right: 5,
                        child: GestureDetector(
                          onTap: () => print("Open Camera/Gallery"),
                          child: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: const BoxDecoration(
                              color: Colors.blueAccent,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.camera_alt,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 40),

                  Column(
                    children: [
                      CustomTextField(label: "Name", hintText: "Tanvir Hasan"),
                      SizedBox(height: 10),
                      CustomTextField(
                        label: "Email",
                        hintText: "tanvieHasan@gmail.com",
                      ),

                      SizedBox(height: 50),
                      Smallbutton(
                        buttoname: "Save Change",
                        height: 50,
                        width: 160,



                        onTap: () {
                          print("Button Clicked");
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
