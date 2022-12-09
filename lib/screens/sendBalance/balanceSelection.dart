import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BalanceSelection extends StatefulWidget {
  const BalanceSelection({super.key});

  @override
  State<BalanceSelection> createState() => _BalanceSelectionState();
}

class _BalanceSelectionState extends State<BalanceSelection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(17)),
      child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(17),
            vertical: AppLayout.getHeight(30),
          ),
          height: AppLayout.getHeight(260),
          decoration: BoxDecoration(
            border: Border.all(
              width: AppLayout.getWidth(1),
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(5),
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Coin converstion section
              Text(
                "1 BTC = 12,868,719.54 NGN",
                style: Styles.headerTextTwo.copyWith(
                  fontWeight: FontWeight.w700,
                  fontSize: AppLayout.getHeight(13),
                ),
              ),

              // Send balance input
              Gap(AppLayout.getHeight(10)),
            ],
          )),
    );
  }
}
