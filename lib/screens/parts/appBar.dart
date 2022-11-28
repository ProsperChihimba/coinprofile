import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:flutter/material.dart';

class AppBarPart extends StatelessWidget {
  const AppBarPart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(17)),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(17)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1.4, color: Styles.blackColor),
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(20))),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(AppLayout.getWidth(20)),
                child: Image(
                  image: const AssetImage("assets/proc.jpeg"),
                  height: AppLayout.getHeight(35),
                  width: AppLayout.getWidth(35),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
