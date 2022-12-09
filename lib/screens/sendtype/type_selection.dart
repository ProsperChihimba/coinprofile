import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SendMoneyToSelection extends StatelessWidget {
  const SendMoneyToSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(17)),
      child: Column(
        children: [
          const OptionSection(
            textHeader: "Coinprofile user",
            iconChoose: FluentSystemIcons.ic_fluent_person_filled,
          ),
          Gap(AppLayout.getHeight(20)),
          const OptionSection(
            textHeader: "Bank account",
            iconChoose: FluentSystemIcons.ic_fluent_bank_regular,
          ),
        ],
      ),
    );
  }
}

class OptionSection extends StatelessWidget {
  final String textHeader;
  final IconData iconChoose;
  const OptionSection(
      {super.key, required this.textHeader, required this.iconChoose});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: AppLayout.getHeight(19),
        horizontal: AppLayout.getWidth(21),
      ),
      height: AppLayout.getHeight(62),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            textHeader,
            style: Styles.headerText,
          ),
          Icon(iconChoose)
        ],
      ),
    );
  }
}
