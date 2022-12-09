import 'package:coinprofile/screens/sendBalance/balanceSelection.dart';
import 'package:coinprofile/screens/sendselection/app_bar.dart';
import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SendBalance extends StatelessWidget {
  const SendBalance({super.key});

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

            Gap(AppLayout.getHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(17),
              ),
              child: Center(
                child: Text(
                  "How much are you sending?",
                  style: Styles.headerText,
                ),
              ),
            ),

            // money selection section
            Gap(AppLayout.getHeight(50)),
            const BalanceSelection(),
          ],
        ),
      ),
    );
  }
}
