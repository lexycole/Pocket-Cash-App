import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:pocket_cash/service/ad_mob_service.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({ Key? key }) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {

  BannerAd? _banner;
  // InterstitialAd? _interstitialAd;
  // RewardedAd? _rewardedAd;
  // int _rewardedScore = 0;

  
  @override
  void initState() {

    super.initState();

    // _createBannerAd();

    // _createInterstitialAd();

    // _createRewardedAd();

  }

  // void _createBannerAd() {
  //   _banner = BannerAd(
  //     size: AdSize.banner,
  //     adUnitId: 'ca-app-pub-3940256099942544/6300978111',
  //     listener: AdMobService.bannerListener,
  //     request: AdRequest(),
  //   )..load();
  // }

  // void _createInterstitialAd() {
  //   InterstitialAd.load(
  //     adUnitId: AdMobService.interstitialAdUnitId!,
  //     request: AdRequest(),
  //     adLoadCallback: InterstitialAdLoadCallback(
  //       onAdLoaded: (InterstitialAd ad) {
  //         // Keep a reference to the ad so you can show it later.
  //         this._interstitialAd = ad;
  //         print('Ad loaded.');
  //       },
  //       onAdFailedToLoad: (LoadAdError error) {
  //         _interstitialAd = null;
  //         print('Ad failed to load: $error');
  //       },
  //     ),
  //   );
  // }

  // void _showInterstitialAd() {
  //   if (_interstitialAd != null) {
  //     _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
  //       onAdDismissedFullScreenContent: (ad) {
  //         ad.dispose();
  //         _createInterstitialAd();
  //       },
  //       onAdFailedToShowFullScreenContent:(ad, error) {
  //         ad.dispose();
  //         _createInterstitialAd();
  //       }
  //     );
  //     _interstitialAd!.show();
  //     _interstitialAd = null;
  //   }
  // }

  // void _createRewardedAd() {
  //   RewardedAd.load(
  //     adUnitId: AdMobService.rewardedAdUnitId!,
  //     request: const AdRequest(),
  //     rewardedAdLoadCallback: RewardedAdLoadCallback( 
  //       onAdLoaded: (ad) => setState(() => _rewardedAd = ad),
  //       onAdFailedToLoad: (error) => setState(() => _rewardedAd = null),
  //     ),
  //   );
  // }

  // void _showRewardedAd() {
  //   if ( _rewardedAd != null ) {
  //     _rewardedAd!.fullScreenContentCallback = FullScreenContentCallback(
  //       onAdDismissedFullScreenContent: (ad) {
  //         ad.dispose();
  //         _createRewardedAd();
  //       },
  //       onAdFailedToShowFullScreenContent: (ad, error) {
  //         ad.dispose();
  //         _createRewardedAd();
  //       },
  //     );
  //     _rewardedAd!.show(
  //       onUserEarnedReward: (ad, reward) => setState(() => _rewardedScore++)
  //     );
  //     _rewardedAd = null;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 135, 42, 236),
          title: Center(child: const Text('Grow Earn V14')),
        ),
        body: SingleChildScrollView(
            child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Task decsription
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
                                    RichText(
                                      text: TextSpan(
                                        text: 'Task Admin Account, Profile information Profile Profile information Profile information information Profile information Profile information Profile information Profile information Profile information Profile information Profile information Profileinformation Profileinformation Profileinformation Profileinformation Profileinformation Profileinformation Profileinformation Profileinformation Profile ',
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
                        SizedBox(height: 15),

                      // Numbers Tabs 
                      Center(
                        child: Container(
                          width: double.maxFinite,
                          padding: const EdgeInsets.only(left:10.0, right:10.0),
                          child: Column(
                            children: [
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(width: 5),
                                    Expanded(
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                           DecoratedBox(
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(255, 135, 42, 236),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(15),
                                                child: Text("01",
                                                    style: TextStyle(color: Colors.white, fontSize:25,fontWeight:FontWeight.bold)),
                                              ),
                                            ),
                                          Container(
                                              padding: const EdgeInsets.only(left:3.0, top:20.0, right:3.0),
                                              child:Text("vsd"),
                                          ),
                                          DecoratedBox(
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(255, 135, 42, 236),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(15),
                                                child: Text("19",
                                                    style: TextStyle(color: Colors.white, fontSize:25,fontWeight:FontWeight.bold)),
                                              ),
                                            ),
                                           Container(
                                              padding: const EdgeInsets.only(left:3.0, top:20.0, right:3.0),
                                              child:Text("vsd"),
                                          ),
                                          DecoratedBox(
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(255, 135, 42, 236),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(15),
                                                child: Text("51",
                                                    style: TextStyle(color: Colors.white, fontSize:25,fontWeight:FontWeight.bold)),
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(left:3.0, top:20.0, right:3.0),
                                              child:Text("wevsd"),
                                          ),
                                             DecoratedBox(
                                              decoration: BoxDecoration(
                                                color: Color.fromARGB(255, 135, 42, 236),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(15),
                                                child: Text("21",
                                                    style: TextStyle(color: Colors.white, fontSize:25,fontWeight:FontWeight.bold)),
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.only(left:3.0, top:20.0, right:3.0),
                                              child:Text("vsdsd"),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ]
                  )
                )
                      ),

                      SizedBox(height: 5),
                      
                      // Text('Rewarded Score is: $_rewardedScore'),
                      
                      SizedBox(height: 5),

                      // ElevatedButton(
                      //   onPressed: _showInterstitialAd,
                      //   child: const Text('Interstitial Ad'),
                      // ),

                      // SizedBox(height: 5),

                      // ElevatedButton(
                      //   onPressed: _showRewardedAd,
                      //   child: const Text('Get 1 free Score'),
                      // )  
            ]
          )
        ),

        // bottomNavigationBar: _banner == null 
        //   ? Container(
        //   height: 52,
        //   margin: const EdgeInsets.only(bottom: 12),
        //   child: AdWidget(ad: _banner!),
        // ) : Container() 
      );
  }
}