import 'package:coinprofile/screens/settings/input_fields.dart';
import 'package:coinprofile/screens/settings/profile.dart';
import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            // Screen desc
            Gap(AppLayout.getHeight(18)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(17),
              ),
              child: Text(
                "View your Personal Profile Information",
                style: Styles.normalText.copyWith(
                  color: Colors.grey.shade500,
                ),
              ),
            ),

            // user profile
            Gap(AppLayout.getHeight(34)),
            const ProfileSection(),

            Gap(AppLayout.getHeight(40)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(17),
              ),
              child: Container(
                height: AppLayout.getHeight(1),
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                ),
              ),
            ),

            Gap(AppLayout.getHeight(50)),
            const InputFieds()
          ],
        ),
      ),
    );
  }
}
