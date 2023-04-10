import 'package:flutter/material.dart';

class JoinTelegramDialog extends StatelessWidget {
  const JoinTelegramDialog({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context:context,
        builder: (BuildContext context) => AlertDialog(
          content: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Icon(Icons.telegram, size: 80, color: Colors.blue),
                          SizedBox(height: 10),
                          Text("Watch your bussiness growing in real time! Watch your bussiness growing in real time! Watch your bussiness growing in real time! Watch your bussiness growing in real time! Watch your bussiness growing in real time! Watch your bussiness growing in real time!",
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
                      child: Text('Join Telegram'),
                    ),
                  ],
        )
      ),
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 380,
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue,
                    child: Icon(Icons.telegram,
                        color: Colors.white, size: 35),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Telegram Channel",
                            style: TextStyle(fontSize: 18)),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text("status",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    );
  }
}