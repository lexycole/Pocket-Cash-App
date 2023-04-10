import 'package:flutter/material.dart';

void showScaffoldMessage({
  required BuildContext context,
  required GlobalKey<ScaffoldState> scaffoldkey,
  required String message,
    Color? bgcolor
    }) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message, style: TextStyle(fontSize: 18)),
      backgroundColor: bgcolor ?? Theme.of(context).primaryColor,
  ));
}
