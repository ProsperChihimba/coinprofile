import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(17),
      ),
      child: Row(
        children: [
          Container(
            width: AppLayout.getWidth(35),
            height: AppLayout.getHeight(35),
            decoration: BoxDecoration(
                color: const Color(0xFFdaede5),
                borderRadius: BorderRadius.circular(AppLayout.getHeight(16))),
            child: Transform.rotate(
              angle: 0.8,
              child: Icon(
                Icons.arrow_downward_rounded,
                color: Colors.green.shade700,
              ),
            ),
          ),
          Gap(AppLayout.getWidth(20)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "@balanceV1",
                style: Styles.headerTextTwo,
              ),
              Gap(AppLayout.getHeight(5)),
              Text(
                "Received . May 13",
                style: Styles.normalText.copyWith(color: Colors.grey.shade400),
              ),
            ],
          ),
          const Spacer(),
          Text(
            "+0",
            style: Styles.headerTextTwo,
          ),
        ],
      ),
    );
  }
}
