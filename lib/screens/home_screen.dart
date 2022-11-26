import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:flutter/material.dart';

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
            child: Column(
              children: [
                // App header
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: AppLayout.getHeight(17)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1.4, color: Styles.blackColor),
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

                // Welcome message
              ],
            ),
          )
        ],
      ),
    );
  }
}
