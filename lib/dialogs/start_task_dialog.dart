import 'package:flutter/material.dart';

class StartTaskDialog extends StatelessWidget {
  const StartTaskDialog({ Key? key }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context:context,
        builder: (BuildContext context) => AlertDialog(
          content: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(Icons.warning, size: 80, color: Colors.blue),
                          SizedBox(height: 10),
                          Text("United States, Switerland, Australia, Germany. United States, Switerland, Australia, Germany United States, Switerland, Australia, Germany United States, Switerland, Australia, Germany United States, Switerland, Australia, Germany.",
                              style: TextStyle(color: Colors.grey)),
                        ]
                      ),
                    ),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'Cancel'),
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        backgroundColor: Colors.blue,
                        onSurface: Colors.grey,
                      ),
                      child: Text('Ok'),
                    ),
                  ],
        )
      ),
      child: Card(
        color: Colors.red,
        shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
              topLeft: Radius.circular(8.0),
              bottomRight: Radius.circular(8.0),
          )
        ),
        child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                       Text("Start Task",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 21, color: Colors.white)),
            ]
          )
        )
      )
    );
  }
}