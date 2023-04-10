import 'package:flutter/material.dart';
import 'package:pocket_cash/screens/start_task_screen/index.dart';
import 'package:startapp_sdk/startapp.dart';

class GrowSubScreen extends StatefulWidget {
  const GrowSubScreen({ Key? key }) : super(key: key);

  @override
  State<GrowSubScreen> createState() => _GrowSubScreenState();
}

class _GrowSubScreenState extends State<GrowSubScreen> {


  var startAppSdk = StartAppSdk();
  StartAppBannerAd? mrecAd;

  @override
  void initState() {
    super.initState();
    startAppSdk.loadBannerAd(StartAppBannerType.MREC)
    .then((mrecAd) {
      setState(() {
        this.mrecAd = mrecAd;
      });
    }).onError <StartAppException> ((ex, stackTrace) {
      print("Error Loading Merc Ad: ${ex.message}");
    }).onError((error, stackTrace) {
      print("Error Loading Merc Ad: $error");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 135, 42, 236),
          title: Center(child: const Text('Grow Sub 3')),
        ),
        backgroundColor: Colors.blue[50],
        body: SingleChildScrollView(
            child: Container(
            color: Color.fromARGB(255,30, 2, 77),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Card(
                      elevation: 10.0,
                      color: Color.fromARGB(255, 21, 3, 53),
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
                                RichText(
                                  text: TextSpan(
                                    text: 'Web Visit Web Visit Web Visit Web VisitWeb Visit Web VisitWeb Visit Web Visit Web Visit Web Visit Web Visit Web Visit Web Visit Web Visit Web Visit Web Visit Web Visit Web Visit Web VisitWeb VisitWeb Visit',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 21,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ]
                            ),
                        )
                      ),
                  SizedBox(height: 20),
                  Container(
                    child: Column(
                      children: [
                       mrecAd != null ? StartAppBanner(mrecAd!) : Container(),
                      ],
                    ),
                  ),
                  // Start Task Button
                  Container(
                      width: 380,
                      padding: const EdgeInsets.all(10.0),
                      child: ElevatedButton(
                      child: Text( "Start Task",
                      style: TextStyle(color: Colors.white, fontSize: 21,),
                    ),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => StartTaskScreen()));
                      },
                      style: 
                      ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        primary: Color.fromARGB(255, 35, 1, 95),
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      ),
                    )
                  ),
            ]
          )
          )
        )
  );
  }
}
