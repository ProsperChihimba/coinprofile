import 'package:coinprofile/screens/sendselection/selection.dart';
import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class SendMoneySelection extends StatefulWidget {
  const SendMoneySelection({super.key});

  @override
  State<SendMoneySelection> createState() => _SendMoneySelectionState();
}

class _SendMoneySelectionState extends State<SendMoneySelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf2eddc),
      body: SafeArea(
        child: ListView(
          children: [
            Gap(AppLayout.getHeight(20)),

            // App bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(17)),
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Row(
                  children: [
                    const Icon(Icons.arrow_back),
                    Gap(AppLayout.getWidth(10)),
                    Text(
                      "Go back",
                      style: Styles.headerTextTwo,
                    )
                  ],
                ),
              ),
            ),

            // Page header description
            Gap(AppLayout.getHeight(30)),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(17),
              ),
              child: Text(
                "Where are you sending money from?",
                style: Styles.headerText,
              ),
            ),

            // selection of sending money
            Gap(AppLayout.getHeight(50)),
            const PaymentSelection(),
          ],
        ),
      ),
    );
  }
}
