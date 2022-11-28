import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:flutter/material.dart';

class BalancePart extends StatelessWidget {
  const BalancePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(17),
      ),
      child: Row(
        children: [
          Text(
            "NGN ",
            style: Styles.headerText
                .copyWith(color: Colors.grey.shade400, fontSize: 20),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: AppLayout.getHeight(9)),
            child: Text(
              "0",
              style: Styles.headerText.copyWith(fontSize: 35),
            ),
          ),
          Text(
            ".00",
            style: Styles.headerText
                .copyWith(color: Colors.grey.shade400, fontSize: 20),
          )
        ],
      ),
    );
  }
}
