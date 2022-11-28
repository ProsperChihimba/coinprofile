import 'package:coinprofile/screens/home/action_buttons.dart';
import 'package:coinprofile/screens/home/customerRefers.dart';
import 'package:coinprofile/screens/home/transaction_history.dart';
import 'package:coinprofile/screens/parts/appBar.dart';
import 'package:coinprofile/screens/parts/balance.dart';
import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            const AppBarPart(),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppLayout.getWidth(17),
                  vertical: AppLayout.getHeight(10)),
              child: Text(
                "Welcome! 👋🏽",
                style: Styles.headerText,
              ),
            ),
            // user balance section
            Gap(AppLayout.getHeight(30)),
            const BalancePart(),

            Gap(AppLayout.getHeight(18)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(17),
              ),
              child: Text(
                "Estimated Total balance in ",
                style: Styles.normalText.copyWith(
                  color: Colors.grey.shade400,
                ),
              ),
            ),

            // Send & add money buttons
            Gap(AppLayout.getHeight(25)),
            const ActionButtonsSection(),

            // Customer refers title
            Gap(AppLayout.getHeight(75)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(17),
              ),
              child: Text(
                "C'mon, do something",
                style: Styles.normalText.copyWith(
                  color: Colors.grey.shade400,
                ),
              ),
            ),

            // Customer refers section
            Gap(AppLayout.getHeight(15)),
            const CustomerRefers(),

            // User transaction title
            Gap(AppLayout.getHeight(65)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(17),
              ),
              child: Text(
                "Here’s what you’ve been up to",
                style: Styles.normalText.copyWith(
                  color: Colors.grey.shade400,
                ),
              ),
            ),

            // User transactions section
            Gap(AppLayout.getHeight(15)),
            const TransactionHistory(),

            Gap(AppLayout.getHeight(25)),

            // View all transactions section
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(17),
              ),
              child: Text(
                "See all",
                style: Styles.headerText.copyWith(
                  fontSize: AppLayout.getHeight(16),
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            Gap(AppLayout.getHeight(40)),
          ],
        ),
      ),
    );
  }
}
