import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TransactionsSection extends StatelessWidget {
  const TransactionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(17),
      ),
      child: Column(
        children: [
          Text(
            "It’s lonely here 😢",
            style: Styles.normalText.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          Gap(AppLayout.getHeight(10)),
          Text(
            "Your recent transaction activities show up here, but you haven’t done any transactions yet.",
            style: Styles.normalText.copyWith(
                fontSize: AppLayout.getHeight(13), color: Colors.grey.shade600),
          ),

          //
          Gap(AppLayout.getHeight(10)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Need help ?",
                style: Styles.normalText.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "Talk to us",
                style: Styles.headerText.copyWith(
                  fontSize: AppLayout.getHeight(16),
                  decoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
