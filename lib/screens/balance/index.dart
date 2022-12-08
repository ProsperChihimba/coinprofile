import 'package:coinprofile/screens/balance/actionButtons.dart';
import 'package:coinprofile/screens/balance/transactions.dart';
import 'package:coinprofile/screens/parts/balance.dart';
import 'package:coinprofile/screens/parts/drop_down.dart';
import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BalanceScreen extends StatefulWidget {
  const BalanceScreen({super.key});

  @override
  State<BalanceScreen> createState() => _BalanceScreenState();
}

class _BalanceScreenState extends State<BalanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Gap(AppLayout.getHeight(30)),
            // App header section
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(17),
              ),
              child: Row(
                children: [
                  Text(
                    "Nigerian Naira",
                    style: Styles.normalText.copyWith(
                      color: Styles.blackColor,
                    ),
                  ),
                  Gap(AppLayout.getWidth(10)),
                  const DropDownSection(
                    list: ['NGN', 'USD'],
                  ),
                ],
              ),
            ),

            // Balance text
            Gap(AppLayout.getHeight(50)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(17),
              ),
              child: Text(
                "Balance",
                style: Styles.normalText.copyWith(
                  color: Colors.grey.shade600,
                ),
              ),
            ),

            // user balance section
            Gap(AppLayout.getHeight(15)),
            const BalancePart(),

            // Actions buttons
            Gap(AppLayout.getHeight(20)),
            const ActionButtons(),

            // Transactions title
            Gap(AppLayout.getHeight(70)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(17),
              ),
              child: Text(
                "Transactions",
                style: Styles.normalText.copyWith(
                  color: Colors.grey.shade600,
                ),
              ),
            ),

            Gap(AppLayout.getHeight(20)),
            const TransactionsSection()
          ],
        ),
      ),
    );
  }
}
