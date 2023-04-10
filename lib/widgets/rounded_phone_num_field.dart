import 'package:flutter/material.dart';
import 'package:pocket_cash/widgets/text_field_container.dart';
import 'package:pocket_cash/utils/constants.dart';

class RoundedPhoneNumField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  
  const RoundedPhoneNumField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: primaryColor,
        keyboardType: TextInputType.number,
        // maxLength: 12,
        decoration: const InputDecoration(
          hintText: "Mobile",
          icon: Icon(
            Icons.local_phone,
            color: primaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}