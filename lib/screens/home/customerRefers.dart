import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomerRefers extends StatelessWidget {
  const CustomerRefers({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(17),
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
            width: size.width * 0.75,
            height: AppLayout.getHeight(170),
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(15),
              vertical: AppLayout.getHeight(15),
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(AppLayout.getHeight(6)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Refer & earn \$4 💸",
                  style: Styles.headerText,
                ),
                Gap(AppLayout.getHeight(15)),
                Text(
                  "You’ll both get \$2 when your friend does a transaction of \$20 and above.",
                  style: Styles.normalText.copyWith(
                      fontSize: AppLayout.getHeight(14),
                      color: Colors.grey.shade600),
                ),
                Gap(AppLayout.getHeight(15)),
                Text(
                  "Get referral link",
                  style: Styles.headerText.copyWith(
                    fontSize: AppLayout.getHeight(16),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
            width: size.width * 0.75,
            height: AppLayout.getHeight(170),
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(15),
              vertical: AppLayout.getHeight(15),
            ),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(AppLayout.getHeight(6)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Earn up to 5% interest 💰",
                  style: Styles.headerText,
                ),
                Gap(AppLayout.getHeight(15)),
                Text(
                  "Earn interest on your USD balance, paid weekly.",
                  style: Styles.normalText.copyWith(
                      fontSize: AppLayout.getHeight(14),
                      color: Colors.grey.shade600),
                ),
                Gap(AppLayout.getHeight(15)),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getWidth(10),
                    vertical: AppLayout.getHeight(5),
                  ),
                  decoration: BoxDecoration(
                      color: Styles.blackColor,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getWidth(40))),
                  child: Text(
                    "Coming soon",
                    style: Styles.normalText.copyWith(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
            width: size.width * 0.75,
            height: AppLayout.getHeight(170),
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(15),
              vertical: AppLayout.getHeight(15),
            ),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(AppLayout.getHeight(6)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "We’re constantly improving our product, so we always appreciate any feedback you might have",
                  style: Styles.normalText.copyWith(
                      fontSize: AppLayout.getHeight(14),
                      color: Colors.grey.shade600),
                ),
                Gap(AppLayout.getHeight(20)),
                Text(
                  "Suggest a feature",
                  style: Styles.headerText.copyWith(
                    fontSize: AppLayout.getHeight(16),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
