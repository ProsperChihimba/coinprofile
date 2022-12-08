import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class InputFieds extends StatelessWidget {
  const InputFieds({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(17),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: AppLayout.getHeight(50),
            width: size.width * 0.70,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Enter name',
                hintStyle:
                    Styles.normalText.copyWith(color: Colors.grey.shade400),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400)),
              ),
            ),
          ),
          Text(
            "Name",
            style: Styles.normalText.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: AppLayout.getHeight(12),
            ),
          ),
          Gap(AppLayout.getHeight(20)),

          // Second input
          SizedBox(
            width: size.width * 0.80,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cool man',
                hintStyle:
                    Styles.normalText.copyWith(color: Colors.grey.shade400),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400)),
              ),
            ),
          ),
          Text(
            "Profile description",
            style: Styles.normalText.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: AppLayout.getHeight(12),
            ),
          ),
          Gap(AppLayout.getHeight(20)),

          // Third input
          SizedBox(
            height: AppLayout.getHeight(50),
            width: size.width * 0.80,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'prosperchihimba@gmail.com',
                hintStyle:
                    Styles.normalText.copyWith(color: Colors.grey.shade400),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400)),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400)),
              ),
            ),
          ),
          Text(
            "Email",
            style: Styles.normalText.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: AppLayout.getHeight(12),
            ),
          ),
          Gap(AppLayout.getHeight(30)),

          // Button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Styles.blackColor,
                padding: EdgeInsets.all(AppLayout.getHeight(10))),
            onPressed: (() {}),
            child: Text(
              "Save changes",
              style: Styles.normalText.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
