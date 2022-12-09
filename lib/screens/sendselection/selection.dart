import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PaymentSelection extends StatefulWidget {
  const PaymentSelection({super.key});

  @override
  State<PaymentSelection> createState() => _PaymentSelectionState();
}

class _PaymentSelectionState extends State<PaymentSelection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(17)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your Coinprofile balance",
            style: Styles.normalText.copyWith(color: Colors.grey.shade600),
          ),
          Gap(AppLayout.getHeight(10)),
          SendOption(
            header: "Send from Balance",
            features: [
              FeatureContainer(
                name: "Instant",
                bgColor: Colors.green.shade50,
                textColor: Colors.green,
              ),
              FeatureContainer(
                name: "No fees",
                bgColor: Colors.green.shade50,
                textColor: Colors.green,
              ),
            ],
          ),

          //
          Gap(AppLayout.getHeight(35)),
          Text(
            "Account or wallet outside Coinprofile",
            style: Styles.normalText.copyWith(color: Colors.grey.shade600),
          ),
          Gap(AppLayout.getHeight(10)),
          SendOption(
            header: "Send from crypto wallet",
            features: [
              FeatureContainer(
                name: "5 minutes",
                textColor: const Color(0xFFf5841f),
                bgColor: Colors.orange.shade50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Container for radius container
class FeatureContainer extends StatelessWidget {
  final String name;
  final Color textColor;
  final Color bgColor;
  const FeatureContainer(
      {super.key,
      required this.name,
      required this.bgColor,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppLayout.getHeight(25),
      padding: EdgeInsets.symmetric(
        horizontal: AppLayout.getWidth(10),
      ),
      margin: EdgeInsets.only(right: AppLayout.getWidth(5)),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        name,
        style: Styles.headerTextTwo.copyWith(
          color: textColor,
          fontSize: AppLayout.getHeight(15),
        ),
      ),
    );
  }
}

// Send money option
class SendOption extends StatelessWidget {
  final String header;
  final List<Widget> features;
  const SendOption({super.key, required this.header, required this.features});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppLayout.getHeight(110),
      padding: EdgeInsets.only(
        left: AppLayout.getWidth(19),
        right: AppLayout.getWidth(19),
        top: AppLayout.getHeight(21),
        bottom: AppLayout.getWidth(10),
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: AppLayout.getWidth(1),
          color: Colors.black,
        ),
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                header,
                style: Styles.headerText.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Icon(Icons.arrow_forward_rounded)
            ],
          ),
          Gap(AppLayout.getHeight(15)),
          Row(
              children: features.map(
            (data) {
              return data;
            },
          ).toList())
        ],
      ),
    );
  }
}
