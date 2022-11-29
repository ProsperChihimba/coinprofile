import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(17),
      ),
      child: Row(
        children: [
          // User image
          Container(
            decoration: BoxDecoration(
                border: Border.all(width: 1.4, color: Styles.blackColor),
                borderRadius: BorderRadius.circular(AppLayout.getWidth(35))),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppLayout.getWidth(35)),
              child: Image(
                image: const AssetImage("assets/proc.jpeg"),
                height: AppLayout.getHeight(55),
                width: AppLayout.getWidth(55),
              ),
            ),
          ),

          Gap(AppLayout.getWidth(25)),
          // username
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "@prosperabsalom",
                style: Styles.headerText.copyWith(
                  fontSize: AppLayout.getHeight(21),
                ),
              ),
              Gap(AppLayout.getHeight(2)),
              Row(
                children: [
                  Text(
                    "coinprofile.me/@prosperabsalom",
                    style: Styles.headerText.copyWith(
                      fontSize: AppLayout.getHeight(12.5),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  Gap(AppLayout.getWidth(5)),
                  Icon(
                    FluentSystemIcons.ic_fluent_copy_regular,
                    size: AppLayout.getHeight(15),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
