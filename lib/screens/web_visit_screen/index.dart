import 'package:flutter/material.dart';
import 'package:pocket_cash/screens/commission_screen/index.dart';

class WebVisitScreen extends StatefulWidget {
  const WebVisitScreen({ Key? key }) : super(key: key);

  @override
  State<WebVisitScreen> createState() => _WebVisitScreenState();
}

class _WebVisitScreenState extends State<WebVisitScreen> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 135, 42, 236),
          title: Center(child: const Text('Web Visit')),
        ),
        backgroundColor: Colors.blue[50],
        body: SingleChildScrollView(
          child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Visit task
                  InkWell(
                    splashColor: Colors.purple.withAlpha(30),
                    borderRadius: BorderRadius.circular(40.0),
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute( builder: (context) => CommissionScreen()) ),
                      child: Card(
                              margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                              child: Container(
                                  width: 380,
                                  color:Color.fromARGB(255, 165, 101, 248),
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(width: 10),
                                      CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Color.fromARGB(255, 128, 209, 219),
                                        child: Icon(Icons.task,
                                            color: Colors.white, size: 35),
                                      ),
                                      SizedBox(width: 70),
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Visit: 0/5",
                                                style: TextStyle(
                                                  fontSize: 26,
                                                  color: Colors.white, 
                                                  fontWeight: FontWeight.bold,
                                                  )
                                              ),
                                          ],
                                        ),
                                      ),
                                    ],
                                ),
                              ),
                          ),
                    ),
                  SizedBox(height: 10),
                  // Vist Now Button
                  Container(
                      width: 400,
                      padding: const EdgeInsets.only(left:18.0, right:18.0, top:10.0, bottom:10.0),
                      child: ElevatedButton(
                              child: Text(
                                "VISIT NOW",
                                style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              onPressed: (){},
                              clipBehavior: Clip.antiAlias,
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromARGB(255, 165, 101, 248),
                                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),),
                            )
                      ),
                  SizedBox(height: 5),
                  // Notice Card
                  Card(
                      elevation: 10.0,
                      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                              topLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            )
                          ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                SizedBox(height: 20),
                                Text("Visit: 0/5", style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 5),
                                RichText(
                                  text: TextSpan(
                                    text: 'Web Visit Web Visit Web Visit Web VisitWeb Visit Web VisitWeb Visit Web Visit Web Visit Web Visit Web Visit Web Visit Web Visit Web Visit Web Visit Web Visit Web Visit Web Visit Web VisitWeb VisitWeb Visit',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ]
                            ),
                        )
                      ),
                  // Visit Now Buton
                  Container(
                    width: 380,
                    padding: const EdgeInsets.all(10.0),
                    child: ElevatedButton(
                          child: Text( "visit now visit now visit now now",
                          style: TextStyle(color: Colors.white, fontSize: 21,),
                        ),
                        onPressed: (){},
                        style: 
                        ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          primary: Colors.red,
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        ),
                      )
                  ),
          ]
        )
      )
    );
  }
}