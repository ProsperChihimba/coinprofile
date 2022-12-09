import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class AppBarSection extends StatelessWidget {
  const AppBarSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(17)),
      child: InkWell(
        onTap: () {
          Get.back();
        },
        child: Row(
          children: [
            const Icon(Icons.arrow_back),
            Gap(AppLayout.getWidth(10)),
            Text(
              "Go back",
              style: Styles.headerTextTwo,
            )
          ],
        ),
      ),
    );
  }
}
