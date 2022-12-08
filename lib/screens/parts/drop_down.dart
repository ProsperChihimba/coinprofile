import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:flutter/material.dart';

const List<String> list = <String>['NGN', 'USD'];

class DropDownSection extends StatefulWidget {
  const DropDownSection({super.key});

  @override
  State<DropDownSection> createState() => _DropDownSectionState();
}

class _DropDownSectionState extends State<DropDownSection> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(8)),
      height: AppLayout.getHeight(35),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(25),
      ),
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: Icon(
          Icons.arrow_drop_down_rounded,
          size: AppLayout.getHeight(30),
        ),
        style: Styles.headerText,
        underline: Container(),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
    ;
  }
}
