import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ActionButtons extends StatefulWidget {
  const ActionButtons({super.key});

  @override
  State<ActionButtons> createState() => _ActionButtonsState();
}

class _ActionButtonsState extends State<ActionButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Add money button
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(17),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Styles.blackColor,
                padding:
                    EdgeInsets.symmetric(vertical: AppLayout.getHeight(11))),
            onPressed: (() {}),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FluentSystemIcons.ic_fluent_add_filled,
                  color: Colors.white,
                  size: AppLayout.getHeight(18),
                ),
                Gap(AppLayout.getWidth(10)),
                Text(
                  "Add money",
                  style: Styles.normalText.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),

        // Send money button
        Gap(AppLayout.getHeight(10)),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(17),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                side: BorderSide(
                  width: AppLayout.getWidth(1),
                  color: Colors.grey.shade500,
                ),
                backgroundColor: Colors.white,
                padding:
                    EdgeInsets.symmetric(vertical: AppLayout.getHeight(11))),
            onPressed: (() {}),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.rotate(
                  angle: -0.8,
                  child: Icon(
                    FluentSystemIcons.ic_fluent_send_regular,
                    size: AppLayout.getHeight(18),
                    color: Colors.grey.shade500,
                  ),
                ),
                Gap(AppLayout.getWidth(10)),
                Text(
                  "Send money",
                  style:
                      Styles.normalText.copyWith(color: Colors.grey.shade500),
                ),
              ],
            ),
          ),
        ),

        // withdraw button
        Gap(AppLayout.getHeight(10)),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(17),
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                side: BorderSide(
                  width: AppLayout.getWidth(1),
                  color: Colors.grey.shade500,
                ),
                backgroundColor: Colors.white,
                padding:
                    EdgeInsets.symmetric(vertical: AppLayout.getHeight(11))),
            onPressed: (() {}),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Transform.rotate(
                  angle: -0.8,
                  child: Icon(
                    FluentSystemIcons.ic_fluent_send_regular,
                    size: AppLayout.getHeight(18),
                    color: Colors.grey.shade500,
                  ),
                ),
                Gap(AppLayout.getWidth(10)),
                Text(
                  "Withdraw",
                  style:
                      Styles.normalText.copyWith(color: Colors.grey.shade500),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
