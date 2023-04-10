import 'package:flutter/material.dart';

class CommissionScreen extends StatelessWidget {
  const CommissionScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 135, 42, 236),
        title: Center(child: Text('Commission')),
         actions: [
           Container(
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal:10),
              width: size.width * 0.25,
              child: OutlinedButton.icon(
                    icon: Icon(Icons.remove_red_eye, color: Colors.white),
                    label: Text(("Save"), 
                      style: TextStyle(color: Colors.white)
                      ),
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(
                        BorderSide(color: Colors.white)
                      ),
                      shape: MaterialStateProperty.all<OutlinedBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      )
                    ),
                    onPressed: () {}
                  ),
                )
              // ElevatedButton(
              //   style: ButtonStyle(
              //     backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
              //     shape: MaterialStateProperty.all<OutlinedBorder>(
              //       RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(10),
              //       )
              //     )
              //   ),    
              //   child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Icon(Icons.remove_red_eye,color: Colors.white, size: 30),
              //         SizedBox(width:2),
              //         Text(("save"),
              //         style: TextStyle(fontSize: 21, color: Colors.white))]),
              //       onPressed: () { }
              //   )
              // Save changes button
              //  IconButton(
        //        icon: Icon(Icons.cancel, color: Colors.white, size: 35),
        //        onPressed: () {  },
        //         ),
          // TextButton(
          //   child: Text(("SAVE"),
          //   style: TextStyle(color: Colors.red)),
          //   onPressed: () {},
          // )
        ],
      ),
      backgroundColor: Colors.blue[50],
      body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Card(
                          elevation: 10.0,
                          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          child: Padding(
                              padding: const EdgeInsets.all(10.0), 
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 380,
                                    color: Colors.grey[100],
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(width: 5),
                                        Text("Refer Bonus",
                                                  style: TextStyle(fontSize: 16)),
                                        SizedBox(width: 5),
                                        Text("LIVE",
                                                  style: TextStyle(
                                                    fontSize: 20, 
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(255, 165, 101, 248))),
                                        Icon(Icons.live_tv, size: 30, color: Colors.grey),
                                        SizedBox(width: 5),
                                        Text("Commission",
                                                  style: TextStyle(fontSize: 16)),
                                        
                                        SizedBox(width: 10),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 400,
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 15),
                                        Text("1000 Point",
                                                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold,
                                                   color: Colors.grey)),
                                        SizedBox(width: 150),
                                        Text("20%",
                                                  style: TextStyle(
                                                    fontSize: 20, 
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey)
                                                    ),
                                      ],
                                    ),
                                  ),
                                  
                                  Container(
                                    width: 400,
                                    // padding: const EdgeInsets.all(10.0),
                                    child: Padding(
                                        padding: const EdgeInsets.only(left:10.0,  right:10.0, ),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              SizedBox(height: 20),
                                              Text("0 Point",
                                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                                  textAlign: TextAlign.center),
                                              SizedBox(height: 10),
                                              Text("Available",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(fontSize: 18, color: Colors.grey)),
                                              SizedBox(height: 22),
                                            ]
                                          ),
                                    ),
                                  ),
                                 
                                  Container(
                                    width: 400,
                                    padding: const EdgeInsets.all(10.0),
                                    color: Colors.grey[100],
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(width: 10),
                                        Text("Claimed",
                                                   style: TextStyle(
                                                    fontSize: 21, 
                                                    color: Colors.green)),
                                        SizedBox(width: 10),
                                        Text("On Hold",
                                                  style: TextStyle(
                                                    fontSize: 21, 
                                                    color: Colors.red)),
                                        SizedBox(width: 10),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 380,
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(width: 10),

                                        Text("0 Point",
                                                  style: TextStyle(
                                                    fontSize: 21, 
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.green)),
                                        SizedBox(width: 10),
                                        Text("0 Point",
                                                  style: TextStyle(
                                                    fontSize: 21, 
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.red)),
                                        SizedBox(width: 10),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  Container(
                                    child: Center(
                                      child:Text("This statics is last 200 transactions",
                                       style: TextStyle( fontSize: 16,))
                                    )
                                  ),
                                  SizedBox(height: 5),
                                ],
                              )
                            ),
                          ),
                        ),
                        // claim commission button
                        Container(
                            width: 410,
                            padding: const EdgeInsets.all(10.0),
                            child: ElevatedButton(
                                    child: Text(
                                      "CLAIM ALL COMMISSIONS",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: (){},
                                    clipBehavior: Clip.antiAlias,
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.grey,
                                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                                        textStyle: TextStyle(
                                            color: Color.fromARGB(255, 165, 101, 248), fontSize: 21, fontWeight: FontWeight.w500)),
                                  )
                            )
                      ]
                    )
                  );
                }
              }