import 'package:coinprofile/utils/app_layout.dart';
import 'package:coinprofile/utils/app_styles.dart';
import 'package:flutter/material.dart';

class DropDownSection extends StatefulWidget {
  final List<String> list;
  const DropDownSection({super.key, required this.list});

  @override
  State<DropDownSection> createState() => _DropDownSectionState();
}

class _DropDownSectionState extends State<DropDownSection> {
  @override
  Widget build(BuildContext context) {
    String dropdownValue = widget.list.first;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(8)),
      height: AppLayout.getHeight(30),
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
        style: Styles.headerTextTwo,
        underline: Container(),
        onChanged: (String? value) {
          // This is called when the user selects an item.
          setState(() {
            dropdownValue = value!;
          });
        },
        items: widget.list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
