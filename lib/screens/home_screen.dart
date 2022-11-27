import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(17)),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(17)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(),
                  Container(
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 1.4, color: Styles.blackColor),
                        borderRadius:
                            BorderRadius.circular(AppLayout.getWidth(20))),
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.circular(AppLayout.getWidth(20)),
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
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getWidth(17),
                vertical: AppLayout.getHeight(10)),
            child: Text(
              "Welcome! 👋🏽",
              style: Styles.headerText,
            ),
          ),
          // user balance section
          Gap(AppLayout.getHeight(30)),
          Padding(
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
                Text(
                  "0",
                  style: Styles.headerText.copyWith(fontSize: 35),
                ),
                Text(
                  ".00",
                  style: Styles.headerText
                      .copyWith(color: Colors.grey.shade400, fontSize: 20),
                )
              ],
            ),
          ),

          Gap(AppLayout.getHeight(18)),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(17),
            ),
            child: Text(
              "Estimated Total balance in ",
              style: Styles.normalText.copyWith(
                color: Colors.grey.shade400,
              ),
            ),
          ),

          // Send & add money buttons
          Gap(AppLayout.getHeight(25)),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(17),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Styles.blackColor,
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(11))),
              onPressed: (() {}),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Transform.rotate(
                    angle: -0.8,
                    child: Icon(
                      FluentSystemIcons.ic_fluent_send_regular,
                      size: AppLayout.getHeight(18),
                    ),
                  ),
                  Gap(AppLayout.getWidth(10)),
                  Text(
                    "Send money",
                    style: Styles.normalText.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          // Add Money button
          Gap(AppLayout.getHeight(10)),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(17),
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  side: BorderSide(
                    width: AppLayout.getWidth(1),
                    color: Styles.blackColor,
                  ),
                  backgroundColor: Colors.white,
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(11))),
              onPressed: (() {}),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FluentSystemIcons.ic_fluent_add_filled,
                    color: Styles.blackColor,
                    size: AppLayout.getHeight(18),
                  ),
                  Gap(AppLayout.getWidth(10)),
                  Text(
                    "Add money",
                    style: Styles.normalText.copyWith(color: Styles.blackColor),
                  ),
                ],
              ),
            ),
          ),

          // List views
          Gap(AppLayout.getHeight(75)),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getWidth(17),
            ),
            child: Text(
              "C'mon, do something",
              style: Styles.normalText.copyWith(
                color: Colors.grey.shade400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
