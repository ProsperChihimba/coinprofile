import 'package:coinprofile/screens/sendselection/app_bar.dart';
import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SendOptionScreen extends StatefulWidget {
  const SendOptionScreen({super.key});

  @override
  State<SendOptionScreen> createState() => _SendOptionScreenState();
}

class _SendOptionScreenState extends State<SendOptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgGrey,
      body: SafeArea(
        child: ListView(
          children: [
            Gap(AppLayout.getHeight(20)),

            // App bar
            const AppBarSection(),

            // header
            Gap(AppLayout.getHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(17),
              ),
              child: Center(
                child: Text(
                  "Where are you sending money to?",
                  style: Styles.headerText,
                ),
              ),
            ),

            // Send money to selection
            Gap(AppLayout.getHeight(50)),
          ],
        ),
      ),
    );
  }
}
