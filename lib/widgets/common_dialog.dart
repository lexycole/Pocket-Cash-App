import 'package:flutter/material.dart';

/// Success Dialog
void successDialog(
  BuildContext context, {
  required String message,
  Widget? icon,
  String? title,
  String? negativeText,
  VoidCallback? negativeAction,
  String? positiveText,
  VoidCallback? positiveAction,
}) {
  _buildDialog(context, "success",
      message: message,
      icon: icon,
      title: title,
      negativeText: negativeText,
      negativeAction: negativeAction,
      positiveText: positiveText,
      positiveAction: positiveAction);
}

/// Error Dialog
void errorDialog(
  BuildContext context, {
  required String message,
  Widget? icon,
  String? title,
  String? negativeText,
  VoidCallback? negativeAction,
  String? positiveText,
  VoidCallback? positiveAction,
}) {
  _buildDialog(context, "error",
      message: message,
      icon: icon,
      title: title,
      negativeText: negativeText,
      negativeAction: negativeAction,
      positiveText: positiveText,
      positiveAction: positiveAction);
}

/// Confirm Dialog
void confirmDialog(
  BuildContext context, {
  required String message,
  Widget? icon,
  String? title,
  String? negativeText,
  VoidCallback? negativeAction,
  String? positiveText,
  VoidCallback? positiveAction,
}) {
  _buildDialog(context, "confirm",
      icon: icon,
      title: title,
      message: message,
      negativeText: negativeText,
      negativeAction: negativeAction,
      positiveText: positiveText,
      positiveAction: positiveAction);
}

/// Confirm Dialog
void infoDialog(
  BuildContext context, {
  required String message,
  Widget? icon,
  String? title,
  String? negativeText,
  VoidCallback? negativeAction,
  String? positiveText,
  VoidCallback? positiveAction,
}) {
  _buildDialog(context, "info",
      icon: icon,
      title: title,
      message: message,
      negativeText: negativeText,
      negativeAction: negativeAction,
      positiveText: positiveText,
      positiveAction: positiveAction);
}

/// Build dialog
void _buildDialog(
  BuildContext context,
  String type, {
  required Widget? icon,
  required String? title,
  required String message,
  required String? negativeText,
  required VoidCallback? negativeAction,
  required String? positiveText,
  required VoidCallback? positiveAction,
}) {
  // Variables
  final _textStyle =
      TextStyle(fontSize: 18, color: Theme.of(context).primaryColor);
  late Widget _icon;
  late String _title;

  // Control type
  switch (type) {
    case "success":
      _icon = icon ??
          CircleAvatar(
            backgroundColor: Colors.green,
            child: Icon(Icons.check, color: Colors.white),
          );
      _title = title ?? 'Success';
      break;
    case "error":
      _icon = icon ??
          CircleAvatar(
            backgroundColor: Colors.red,
            child: Icon(Icons.close, color: Colors.white),
          );
      _title = title ?? 'Error';
      break;
    case "confirm":
      _icon = icon ??
          CircleAvatar(
            backgroundColor: Colors.amber,
            child: Icon(Icons.help_outline, color: Colors.white),
          );
      _title = title ?? 'Are you sure?';
      break;

    case "info":
      _icon = icon ??
          CircleAvatar(
            backgroundColor: Colors.blue,
            child: Icon(Icons.info_outline, color: Colors.white),
          );
      _title = title ?? 'Information';
      break;
  }

  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(28.0),
              topRight: Radius.circular(28.0),
              topLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
            )),
          title: Row(
            children: [
              _icon,
              SizedBox(width: 10),
              Expanded(child: Text(_title, style: TextStyle(fontSize: 22)))
            ],
          ),
          content: Text(
            message,
            style: TextStyle(fontSize: 18),
          ),
          actions: [
            /// Negative button
            negativeAction == null
                ? Container(width: 0, height: 0)
                : TextButton(
                    onPressed: negativeAction,
                    child: Text(negativeText ?? "CANCEL",
                        style: TextStyle(fontSize: 18, color: Colors.grey))),

            /// Positive button
            TextButton(
                onPressed: positiveAction ?? () => Navigator.of(context).pop(),
                child: Text(positiveText ?? "OK",
                    style: _textStyle)),
          ],
        );
      });
}
