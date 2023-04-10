import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:pocket_cash/screens/commission_screen/index.dart';
// import 'package:facebook_audience_network/facebook_audience_network.dart';

  void main() {
      WidgetsFlutterBinding.ensureInitialized();
      MobileAds.instance.initialize();
    runApp(MoreScreen());
  }

  class  MoreScreen extends StatefulWidget {
  const  MoreScreen({ Key? key }) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State< MoreScreen> {
  // @override
  // void initState() {
  //   FacebookAudienceNetwork.init(
  //     testingId: "37b1da9d-b48c-1403-a393-2e09",
  //   );
  // }
  // InterstitialAd? _interstitialAd;
 
//  @override
//   void initState() {
//     super.initState();

//     loadInterstitial();
//   }
//   void loadInterstitial() {
//       String interstitialAdId = "ca-app-pub-1421887869210791~5428858095";

//       InterstitialAd.load(
//         adUnitId: interstitialAdId,
//         request: AdRequest(),
//         adLoadCallback: InterstitialAdLoadCallback(
//           onAdLoaded: (InterstitialAd ad) {
//             // Keep a reference to the ad so you can show it later.
//             _interstitialAd = ad;

//             ad.fullScreenContentCallback = FullScreenContentCallback(
//               onAdDismissedFullScreenContent: (InterstitialAd ad) {
//                 ad.dispose();
//                 loadInterstitial();
//               },
//               onAdFailedToShowFullScreenContent: (InterstitialAd ad, AdError error) {
//                 ad.dispose();
//                 loadInterstitial();
//               },
//             );
//           },
//           onAdFailedToLoad: (LoadAdError error) {
//             print('InterstitialAd failed to load: $error');
//           },
//         )
//       );
//     }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 135, 42, 236),
        title: Center(child: const Text('Grow Earn V14')),
      ),
      body: SingleChildScrollView(
            child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        splashColor: Colors.purple.withAlpha(30),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute( builder: (context) => CommissionScreen()) ),
                        child: Card(
                          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                                    backgroundColor: Colors.green,
                                    child: Icon(Icons.task,
                                        color: Colors.white, size: 35),
                                  ),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Transactions",
                                            style: TextStyle(fontSize: 18)),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
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
                    ),
                     
                      // VPN Apps Card
                      InkWell(
                          splashColor: Colors.purple.withAlpha(30),
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute( builder: (context) => CommissionScreen()) ),
                            child: Card(
                              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                                          child: Icon(Icons.vpn_key,
                                              color: Colors.white, size: 35),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("VPN Apps",
                                                  style: TextStyle(fontSize: 18)),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.yellow,
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
                          ),
                      Text("Refer & Commission", style: TextStyle(fontSize: 18)),
                      
                      // Refer Level Card
                      InkWell(
                        splashColor: Colors.purple.withAlpha(30),
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute( builder: (context) => CommissionScreen()) ),
                          child: Card(
                              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                                          backgroundColor: Colors.yellow,
                                          child: Icon(Icons.task,
                                              color: Colors.white, size: 35),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Refer Level",
                                                  style: TextStyle(fontSize: 18)),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.yellow,
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
                            )
                        ),
                        
                      // Commission Card
                       InkWell(
                          splashColor: Colors.purple.withAlpha(30),
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute( builder: (context) => CommissionScreen()) ),
                            child: Card(
                                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                                            backgroundColor: Colors.deepPurple,
                                            child: Icon(Icons.task,
                                                color: Colors.white, size: 35),
                                          ),
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Commission",
                                                    style: TextStyle(fontSize: 18)),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: Colors.yellow,
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
                              )
                       ),

                      // Refer Friends and Team Container
                      Container(
                        width: 400,
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             InkWell(
                                  splashColor: Colors.purple.withAlpha(30),
                                  onTap: () => Navigator.of(context).push(
                                    MaterialPageRoute( builder: (context) => CommissionScreen()) ),
                                    child: Card(
                                        elevation: 2.0,
                                        color: Colors.blue,
                                        shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(8.0),
                                                  topRight: Radius.circular(8.0),
                                                  topLeft: Radius.circular(8.0),
                                                  bottomRight: Radius.circular(8.0),
                                              )
                                        ),
                                          child: Padding(
                                    padding: const EdgeInsets.only(left:35.0, top:10.0, bottom:10.0, right:35.0),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Icon(Icons.people, 
                                            size: 45, 
                                            color: Colors.white),
                                            Text("Refer Friends",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white)
                                                    ),
                                                  ]
                                                ),
                                              )
                                          )
                                      ),

                                // Refer Team Card
                               InkWell(
                                splashColor: Colors.purple.withAlpha(30),
                                onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute( builder: (context) => CommissionScreen()) ),
                                  child: Card(
                                        elevation: 2.0,
                                        shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.only(
                                                  bottomLeft: Radius.circular(8.0),
                                                  topRight: Radius.circular(8.0),
                                                  topLeft: Radius.circular(8.0),
                                                  bottomRight: Radius.circular(8.0),
                                              )
                                            ),
                                            color: Colors.orange,
                                            child: Padding(
                                              padding: const EdgeInsets.only(left:35.0, top:10.0, bottom:10.0, right:35.0),
                                              child: Column(
                                                  mainAxisSize: MainAxisSize.min,
                                                  children: <Widget>[
                                                    Icon(Icons.person, size: 45, color: Colors.white),
                                                      Text("Refer Team",
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color: Colors.white)),
                                                  ]
                                                ),
                                            )
                                        )
                                  ),
                          ]
                        )
                      ),
                      Text("Payments", style: TextStyle(fontSize: 18)),
                      
                      // Payment Section
                      // Withdraw Money Card
                       InkWell(
                          splashColor: Colors.purple.withAlpha(30),
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute( builder: (context) => CommissionScreen()) ),
                            child: Card(
                              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                                          backgroundColor: Colors.green,
                                          child: Icon(Icons.mobile_friendly,
                                              color: Colors.white, size: 35),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Withdraw Money",
                                                  style: TextStyle(fontSize: 18)),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 10),
                                        DecoratedBox(
                                          decoration: BoxDecoration(
                                            color: Colors.yellow,
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
                        )
                       ),

                      // Payment History Card
                       InkWell(
                          splashColor: Colors.purple.withAlpha(30),
                          onTap: () => Navigator.of(context).push(
                            MaterialPageRoute( builder: (context) => CommissionScreen()) ),
                            child: Card(
                                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
                                            child: Icon(Icons.payment,
                                                color: Colors.white, size: 35),
                                          ),
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Payment Money",
                                                    style: TextStyle(fontSize: 18)),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: Colors.yellow,
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
                              )
                            ),
                      SizedBox(height: 10),
                      // Container(
                      //   alignment: Alignment.center,
                      //   child:FacebookBannerAd(
                      //     placementId: "IMG_16_9_APP_INSTALL#YOUR_PLACEMENT_ID",
                      //     bannerSize: BannerSize.STANDARD,
                      //     listener: (result, value) {
                      //       switch (result) {
                      //         case BannerAdResult.ERROR:
                      //           print("Error: $value");
                      //           break;
                      //         case BannerAdResult.LOADED:
                      //           print("Loaded: $value");
                      //           break;
                      //         case BannerAdResult.CLICKED:
                      //           print("Clicked: $value");
                      //           break;
                      //         case BannerAdResult.LOGGING_IMPRESSION:
                      //           print("Logging Impression: $value");
                      //           break;
                      //       }
                      //     },
                      //   ),
                      // )
                    ]
                  )
                )
              )
          );
        }
      }