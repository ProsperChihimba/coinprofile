import 'package:coinprofile/screens/parts/drop_down.dart';
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
    final size = AppLayout.getSize(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(17)),
      child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(17),
            vertical: AppLayout.getHeight(30),
          ),
          height: AppLayout.getHeight(280),
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
              SizedBox(
                height: AppLayout.getHeight(53),
                child: const InputStack(
                  list: ['BTC', 'ETH'],
                  header: 'Send',
                  initialValue: "012,330",
                ),
              ),

              // Receive input
              Gap(AppLayout.getHeight(15)),
              SizedBox(
                height: AppLayout.getHeight(53),
                child: const InputStack(
                  list: ["NGN", "USD"],
                  header: "Receive",
                  initialValue: "300,450",
                ),
              ),

              // Button
              Gap(AppLayout.getHeight(15)),
              SizedBox(
                width: size.width * 0.90,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Styles.blackColor,
                  ),
                  onPressed: (() {}),
                  child: Text(
                    "Next",
                    style: Styles.normalText.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class InputStack extends StatelessWidget {
  final List<String> list;
  final String header;
  final String initialValue;
  const InputStack(
      {super.key,
      required this.list,
      required this.header,
      required this.initialValue});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          controller: TextEditingController()..text = initialValue,
          style: Styles.headerTextTwo,
          decoration: const InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
            ),
          ),
        ),

        // Send text
        Padding(
          padding: EdgeInsets.only(
              left: AppLayout.getWidth(10),
              top: AppLayout.getHeight(5),
              bottom: AppLayout.getHeight(30)),
          child: Text(
            header,
            style: Styles.normalText.copyWith(
              color: Colors.grey,
              fontWeight: FontWeight.w600,
              fontSize: AppLayout.getHeight(12),
            ),
          ),
        ),

        // Dropdown menu
        Positioned(
          right: AppLayout.getWidth(3),
          top: AppLayout.getHeight(12),
          child: DropDownSection(
            list: list,
            bgColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
