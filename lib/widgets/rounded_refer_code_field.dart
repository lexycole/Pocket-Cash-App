import 'package:flutter/material.dart';
import 'package:pocket_cash/widgets/text_field_container.dart';
import 'package:pocket_cash/utils/constants.dart';

class RoundedReferCodeField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedReferCodeField({
    Key? key,
    required this.hintText,
    this.icon = Icons.onetwothree,
    required this.onChanged,
  }) : super(key: key);


   @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        cursorColor: primaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: primaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}