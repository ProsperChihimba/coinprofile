import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardsScreen extends StatefulWidget {
  const CardsScreen({super.key});

  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  // Card image
                  const Image(
                    image: AssetImage("assets/card.png"),
                    fit: BoxFit.cover,
                  ),

                  // Header text
                  // Gap(AppLayout.getHeight(20)),
                  Text(
                    "Create a virtual Dollar card",
                    style: Styles.headerText,
                  ),
                  Text(
                    "to pay for anything",
                    style: Styles.headerText,
                  ),

                  // explaiation text
                  Gap(AppLayout.getHeight(13)),
                  Text(
                    "To get started, you need to verify your",
                    style: Styles.normalText.copyWith(
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Text(
                    " identity. Don’t worry, it takes only",
                    style: Styles.normalText.copyWith(
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Text(
                    "a few minutes",
                    style: Styles.normalText.copyWith(
                      color: Colors.grey.shade500,
                    ),
                  ),

                  // Button
                  Gap(AppLayout.getHeight(25)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Styles.blackColor,
                        padding: EdgeInsets.all(AppLayout.getHeight(5))),
                    onPressed: (() {}),
                    child: Text(
                      "Verify identity",
                      style: Styles.normalText.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
