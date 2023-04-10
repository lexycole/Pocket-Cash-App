import 'package:flutter/material.dart';
import 'package:pocket_cash/dialogs/open_task_dialog.dart';
import 'package:pocket_cash/dialogs/start_task_dialog.dart';

class GrowEarnV13 extends StatelessWidget {
  
  const GrowEarnV13({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 135, 42, 236),
        title: Center(child: const Text('Grow Earn V13')),
      ),
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        child: Center(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Card(
                margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 400,
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.orange,
                            child: Icon(Icons.verified_user_sharp, color: Colors.white, size: 50),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Lucky Draw", style: TextStyle(fontSize: 25)),
                                Text("It's Lucky time to earn more",
                                    style: TextStyle(fontSize: 17, color: Colors.grey))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ),

              // Open Task Card
                Card(
                  elevation: 10.0,
                  shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(18.0),
                            topRight: Radius.circular(18.0),
                            topLeft: Radius.circular(18.0),
                            bottomRight: Radius.circular(18.0),
                        )
                      ),
                      child: Container(
                      width:400,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                              Container(
                                child: Text("App",
                                  style:
                                      TextStyle(
                                        fontSize: 24, 
                                        fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center),
                              ),
                              SizedBox(height: 20),
                              Text("Apps Download Apps Download",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18, color: Colors.grey)),
                              SizedBox(height: 20),
                              OpenTaskDialog(),
                              SizedBox(height: 20),
                                Text("Watch your bussiness growing in real",
                                    style: TextStyle(color: Colors.grey, fontSize: 18,)),
                                    ]
                          ),   
                        )
                      )
                ), 
                
                SizedBox(height: 10),

                // Web Visit Card
                Card(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(18.0),
                          topRight: Radius.circular(18.0),
                          topLeft: Radius.circular(18.0),
                          bottomRight: Radius.circular(18.0),
                      )
                    ),
                    child: Container(
                      width:400,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                              Container(
                                child: Text("Web Visit",
                                  style:
                                      TextStyle(
                                        fontSize: 24, 
                                        fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center),
                              ),
                              SizedBox(height: 20),
                              Text("Web Visit Web Visit Web Visit",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 18, color: Colors.grey)),
                              SizedBox(height: 20),
                              StartTaskDialog(),
                              SizedBox(height: 20),
                                Text("Watch your bussiness growing in real",
                                    style: TextStyle(color: Colors.grey, fontSize: 18,)),
                                    ]
                          ),   
                        )
                      )
                ), 
                // Last Card
                // Container(
                //   child: Column(
                //         children: [
                //            Card(
                //   // color:Colors.grey,
                //   clipBehavior: Clip.antiAlias,
                //   child: Column(
                //     children: [
                //       ListTile(
                //         leading: Icon(Icons.arrow_drop_down_circle),
                //         title: const Text('Card title 1'),
                //         subtitle: Text('Secondary text', 
                //                     style: TextStyle(
                //                       color: Colors.black.withOpacity(0.6)
                //                       )
                //                     ),
                //         ),
                //       Padding(
                //         padding: const EdgeInsets.all(16.0),
                //         child: Text('Greyhound divisively hello coldy wonderfully marginally far upon excluding.',
                //           style: TextStyle(color: Colors.black.withOpacity(0.6)
                //           ),
                //         ),
                //       ),
                //       ButtonBar(
                //         alignment: MainAxisAlignment.center, 
                //         children: [
                //          ElevatedButton(
                //             style: ButtonStyle(
                //               backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                //               shape: MaterialStateProperty.all<OutlinedBorder>(
                //                 RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(25),
                //                 )
                //               )
                //             ),
                //             child: Text(("ACTION 2"),
                //                 style: TextStyle(fontSize: 18, color: Colors.white)),
                //             onPressed: () {
                //             }
                //           ),
                //           ElevatedButton(
                //             style: ButtonStyle(
                //               backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).primaryColor),
                //               shape: MaterialStateProperty.all<OutlinedBorder>(
                //                 RoundedRectangleBorder(
                //                   borderRadius: BorderRadius.circular(25),
                //                 )
                //               )
                //             ),
                //             child: Text(("ACTION 1"),
                //                 style: TextStyle(fontSize: 18, color: Colors.white)),
                //             onPressed: () { }
                //           ),
                //           Image.asset('assets/icons/Logo.png'),
                //           Image.asset('assets/icons/Logo.png')
                //           ]
                //         )
                //       ]
                //     )
                //   ), 
                //     ])
                //   ), 
                  // Container(
                  //   child: Center(
                  //     child: Column(
                  //       children: <Widget>[
                  //         Container(
                  //           margin: ,
                  //           height: 100.0,
                  //           width: MediaQuery.of(context).size.width,
                  //           decoration: BoxDecoration(
                  //                        image: DecorationImage(
                  //                         image:AssetImage('assets/icons/Logo.png'),
                  //                        fit: BoxFit.cover)
                  //                       ),
                  //           child: Stack(
                  //             alignment: Alignment.topCenter,
                  //                        clipBehavior: Clip.antiAlias,
                  //                        children: [
                  //                         Positioned(
                  //                           top: 200.0,
                  //                           child: Card(
                  //                             child: Text("wgy euiermn")
                  //                           )
                  //                         )
                  //                        ]
                  //           )
                  //         )
                  //       ]
                  //     )
                  //   )
                  // )
                ]
              )
            ),
          ),
        );
      }
    }