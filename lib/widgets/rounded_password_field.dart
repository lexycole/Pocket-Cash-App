import 'package:flutter/material.dart';
import 'package:pocket_cash/widgets/text_field_container.dart';
import 'package:pocket_cash/utils/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged; 
  final bool secureText;

  const RoundedPasswordField({
    Key? key,
    required this.onChanged, 
    this.secureText = true, 
    required TextEditingController controller, 
    required bool obscureText, 
    required String? Function(dynamic pass) validator,
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: primaryColor,
        decoration: const InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: primaryColor,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: primaryColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}