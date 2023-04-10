import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:pocket_cash/dialogs/join_telegram_dialog.dart';
import 'package:pocket_cash/widgets/rounded_button.dart';
// import 'package:pocket_cash/widgets/statistic_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   final int totalActiveUsers = 100;
   final int totalVerifiedUsers = 200;
   final int totalFlaggedUsers = 300;
   final int totalBlockedUsers = 400;

  // Ads Banners
  late BannerAd _bannerAd;
  bool _isAdLoaded = false;

// Initialze Ads Banner state
  @override
  void initState() {
    super.initState();
    _initBannerAd();
  }

// Initialize Ads Banner
  _initBannerAd() {
    _bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: 'ca-app-pub-3940256099942544/6300978111',
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          setState(() {
            _isAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {},
      ),
      request: AdRequest(),
    );

    _bannerAd.load();
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 135, 42, 236),
        title: Center(child: const Text('Grow Earn V14')),
      ),
      backgroundColor: Colors.blue[50],
      body: SingleChildScrollView(
        // physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Home Header
                  Center(
                    child: Container(
                      width: double.maxFinite,
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          // Profile Header card
                            Card(
                                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 500,
                                      padding: const EdgeInsets.all(10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircleAvatar(
                                            radius: 30,
                                            backgroundColor: Color.fromARGB(255, 165, 101, 248),
                                            child: Icon(Icons.person,
                                                color: Colors.white, size: 35),
                                          ),
                                          SizedBox(width: 10),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Akash Ahmed",
                                                    style: TextStyle(fontSize: 18)),
                                                Text("01914302220",
                                                style: TextStyle(fontSize: 18)),
                                              ],
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          DecoratedBox(
                                            decoration: BoxDecoration(
                                              color: Colors.grey[200],
                                              borderRadius: BorderRadius.circular(60),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Icon(Icons.looks_one,
                                                  color: Colors.red, size: 30),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ),
                              SizedBox(height: 12),

                          // Second CARD
                          Card(
                              elevation: 10.0,
                              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                               child: Padding(
                                padding: const EdgeInsets.all(10.0), 
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 400,
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Current Balance",
                                                  style: TextStyle(fontSize: 16)),
                                              SizedBox(height: 22),
                                              CircleAvatar(
                                                radius: 70,
                                                backgroundColor: Color.fromARGB(255, 165, 101, 248),
                                                child: Icon(Icons.task,
                                                    color: Colors.white, size: 35),
                                                ),
                                              SizedBox(height: 22)
                                              ]
                                            )
                                          ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              // Total Calm tile
                                                  ListTile(
                                                    title: Text("Total Claim"),
                                                    subtitle: Text("0"),
                                                    leading: Icon(
                                                      Icons.task, 
                                                      color: Color.fromARGB(255, 165, 101, 248), 
                                                      size: 35),
                                                  ),
                                                  Divider(),
                                                  // Invalid work tile
                                                   ListTile(
                                                    title: Text("Invalid work"),
                                                    subtitle: Text("0"),
                                                    leading: Icon(
                                                      Icons.warning_rounded, 
                                                      color: Color.fromARGB(255, 165, 101, 248), 
                                                      size: 35),
                                                  ),
                                                   Divider(),
                                                  //  Valid Refer tile
                                                   ListTile(
                                                    title: Text("Valid Refer"),
                                                    subtitle: Text("0"),
                                                    leading: Icon(
                                                      Icons.people, 
                                                      color: Color.fromARGB(255, 165, 101, 248), 
                                                      size: 35),
                                                  ),
                                                   Divider(),
                                        //       Row(
                                        //         crossAxisAlignment: CrossAxisAlignment.start,
                                        //         children: [
                                        //           Icon(Icons.task,
                                        //               color: Color.fromARGB(255, 165, 101, 248)),
                                        //           Text("How to works?",
                                        //               style: TextStyle(fontSize: 18)),
                                        //         ],
                                        //   ),
                                        //   SizedBox(height: 10),
                                        //   ListTile(
                                        //     title: Text("Total Claim"),
                                        //     subtitle: Text("0"),
                                        //     leading: Icon(Icons.task_outlined,
                                        //         color: Color.fromARGB(255, 165, 101, 248)),
                                        //   ),
                                          
                                        // SizedBox(height: 10),
                                        //   Row(
                                        //     crossAxisAlignment: CrossAxisAlignment.start,
                                        //     children: [
                                        //       Icon(Icons.task,
                                        //           color: Color.fromARGB(255, 165, 101, 248)),
                                        //       Text("How to works?",
                                        //           style: TextStyle(fontSize: 18)),
                                        //         ],
                                        //       ),  
                                            ],
                                          ), 
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Bottom widgets
                                  Container(
                                    width: 380,
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("MY REFER CODE",
                                                  style: TextStyle(fontSize: 18)),
                                        SizedBox(width: 5),
                                        Text("222007409",
                                                  style: TextStyle(
                                                    fontSize: 20, 
                                                    fontWeight: FontWeight.bold,
                                                    color: Color.fromARGB(255, 165, 101, 248))),
                                        SizedBox(width: 5),
                                        Text("COPY",
                                                  style: TextStyle(fontSize: 18)),
                                        
                                        SizedBox(width: 10),
                                      ],
                                    ),
                                  ),
                                  //Button
                                  Container(
                                    width: 380,
                                    padding: const EdgeInsets.all(10.0),
                                    child: RoundedButton(
                                      text: "Show My Password",
                                      press: () { },
                                      ),
                                    )
                                ],
                              )
                            ),
                            ),
                          SizedBox(height: 22),

                          // 01. How to work CARD
                          Card(
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
                                          backgroundColor: Colors.grey,
                                          child: Icon(Icons.laptop_windows,
                                              color: Colors.white, size: 35),
                                        ),
                                        SizedBox(width: 10),
                                        Expanded(
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("How to works?",
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
                          SizedBox(height: 12),
                          //  02. Payment Profile CARD
                          Card(
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
                                        child: Icon(Icons.settings,
                                            color: Colors.white, size: 35),
                                      ),
                                      SizedBox(width: 10),
                                      Expanded(
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Payment Profile",
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
                          SizedBox(height: 5),
                          // 03. Telegram Channel Card
                          JoinTelegramDialog()
                        ],
                      ),
                    ),
                  ),
                       Icon(Icons.score, size: 80, color: Colors.grey),
                          Text("Control Panel",
                              style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold)),
                          Text("Watch your bussiness growing in real time!",
                              style: TextStyle(color: Colors.grey)),
                            Card(
                              elevation: 10.0,
                              shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(28.0),
                                        topRight: Radius.circular(28.0),
                                        topLeft: Radius.circular(8.0),
                                        bottomRight: Radius.circular(8.0),
                                    )
                                  ),
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      SizedBox(height: 20),
                                      Text("Admin Account",
                                          style:
                                              TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center),
                                      SizedBox(height: 20),
                                      Text("Profile information",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(fontSize: 18, color: Colors.grey)),
                                      SizedBox(height: 22),
                                    ]
                                  ),
                                )
                          ),
                  // Dashboard Statistics section 01
                  // SingleChildScrollView(
                  //   scrollDirection: Axis.horizontal,
                  //   child: Row(
                  //     children: [
                  //       // Total Users
                  //       StatisticCard(
                  //         iconBgColor: Colors.green,
                  //         icon: Icons.person_add_outlined,
                  //         total: totalActiveUsers,
                  //         description: "Total Active Users",
                  //       ),

                  //       // Total Verified Users
                  //       StatisticCard(
                  //         iconBgColor: Colors.blue,
                  //         icon: Icons.check,
                  //         total: totalVerifiedUsers,
                  //         description: "Total Verified Users",
                  //       ),

                  //       // Total Flagged Users
                  //       StatisticCard(
                  //         iconBgColor: Colors.amber,
                  //         icon: Icons.flag_outlined,
                  //         total: totalFlaggedUsers,
                  //         description: "Total Flagged Users",
                  //       ),

                  //       // Total Blocked Users
                  //       StatisticCard(
                  //         iconBgColor: Colors.red,
                  //         icon: Icons.lock_outlined,
                  //         total: totalBlockedUsers,
                  //         description: "Total Blocked Users",
                  //       ),
                  //     ],
                  //   ),
                  // ),

                ],
          ),
      ),

      // Bottom Google Ads Banner
      bottomNavigationBar: _isAdLoaded ? Container(
        height: _bannerAd.size.height.toDouble(),
        width: _bannerAd.size.width.toDouble(),
        child: AdWidget(ad: _bannerAd),
      ) : SizedBox() 
      
    );
  }
}