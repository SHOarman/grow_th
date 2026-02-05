import 'package:flutter/material.dart';
import 'package:get/get.dart'; // simplified import
import 'package:grow_th/core/routes/app_routes.dart';
import 'package:grow_th/core/theme/app_theme.dart';
import 'package:grow_th/presentation/profile/profile_widget/cardbutton.dart';
import 'package:grow_th/presentation/profile/profile_widget/smallbutton.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
                    CircleAvatar(
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
                  ],
                ),

                const SizedBox(height: 20),
                const Text(
                  "User Name",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "user@email.com",
                  style: TextStyle(color: Colors.white70),
                ),

                const SizedBox(height: 30),

                // Smallbutton with Navigation Call
                Smallbutton(
                  height: 50,
                  onTap: () {
                    print("Navigating to Profile Details...");
                     Get.toNamed(AppRoutes.profileedit);
                  }, buttoname: 'Edit Profile',
                ),

                const SizedBox(height: 40),

                // Profile Menu Options
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Cardbutton(
                        onTap: () {
                          Get.toNamed(AppRoutes.faq);


                        },
                        title: 'Legal',
                        subtitle: 'Terms & Conditions,Privacy Policy',
                        iconPath: 'assets/image/iconamoon_profile-fill.png',
                      ),
                      SizedBox(height: 14,),
                      Cardbutton(
                        onTap: () {
                         Get.toNamed(AppRoutes.support);
                        },
                        title: 'Support',
                        subtitle: 'FAQ , Contact Us',
                        iconPath: 'assets/image/iconamoon_profile-fill (1).png',
                      ),


                    ],
                    // children: [
                    //   _buildProfileOption(Icons.edit, "Edit Profile"),
                    //   _buildProfileOption(Icons.settings, "Settings"),
                    //   _buildProfileOption(Icons.help_outline, "Help Support"),
                    //   _buildProfileOption(
                    //     Icons.logout,
                    //     "Logout",
                    //     isLogout: true,
                    //   ),
                    // ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //
  // Widget _buildProfileOption(
  //     IconData icon,
  //     String title, {
  //       bool isLogout = false,
  //     }) {
  //   return ListTile(
  //     leading: Icon(icon, color: isLogout ? Colors.redAccent : Colors.white),
  //     title: Text(
  //       title,
  //       style: TextStyle(color: isLogout ? Colors.redAccent : Colors.white),
  //     ),
  //     trailing: const Icon(
  //       Icons.arrow_forward_ios,
  //       size: 16,
  //       color: Colors.white54,
  //     ),
  //     onTap: () {
  //       if(isLogout) {
  //         print("Logging out...");
  //       }
  //     },
  //   );
  // }
}
