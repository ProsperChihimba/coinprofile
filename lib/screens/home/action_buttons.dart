import 'package:coinprofile/screens/sendselection/index.dart';
import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class ActionButtonsSection extends StatelessWidget {
  const ActionButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(17),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Styles.blackColor,
                padding:
                    EdgeInsets.symmetric(vertical: AppLayout.getHeight(11))),
            onPressed: (() {
              Get.to(() => const SendMoneySelection());
            }),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.rotate(
                  angle: -0.8,
                  child: Icon(
                    FluentSystemIcons.ic_fluent_send_regular,
                    size: AppLayout.getHeight(18),
                  ),
                ),
                Gap(AppLayout.getWidth(10)),
                Text(
                  "Send money",
                  style: Styles.normalText.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        // Add Money button
        Gap(AppLayout.getHeight(10)),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(17),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                side: BorderSide(
                  width: AppLayout.getWidth(1),
                  color: Styles.blackColor,
                ),
                backgroundColor: Colors.white,
                padding:
                    EdgeInsets.symmetric(vertical: AppLayout.getHeight(11))),
            onPressed: (() {}),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FluentSystemIcons.ic_fluent_add_filled,
                  color: Styles.blackColor,
                  size: AppLayout.getHeight(18),
                ),
                Gap(AppLayout.getWidth(10)),
                Text(
                  "Add money",
                  style: Styles.normalText.copyWith(color: Styles.blackColor),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
