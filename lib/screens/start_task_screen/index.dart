import 'package:flutter/material.dart';

class StartTaskScreen extends StatelessWidget {
  const StartTaskScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 21, 3, 53),
      body: Container(
            width: 380,
            padding: const EdgeInsets.only(left:35.0, top:80.0, right:5.0),
            child: Card(
              elevation: 10.0,
              shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(18.0),
                        topRight: Radius.circular(18.0),
                        topLeft: Radius.circular(18.0),
                        bottomRight: Radius.circular(18.0),
                    )
                  ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(height: 20),
                        Text("0/8",
                            style:
                                TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center),
                        SizedBox(height: 20),
                        Text("A Sloth takes 2 weeks to digest the food he\'s eaten",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 18, color: Colors.grey)),
                        SizedBox(height: 20),
                        ElevatedButton(
                            child: Text("Next",
                            style: TextStyle(color: Colors.white, fontSize: 21,),
                          ),
                          onPressed: (){},
                          style: 
                          ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            primary: Color.fromARGB(255, 21, 3, 53),
                            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                          ),
                        ),
                        SizedBox(height: 20),
                      ]
                    ),
                  )
              ),
          )
        );
      }
    }