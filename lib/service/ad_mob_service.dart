// import 'dart:io';

// import 'package:google_mobile_ads/google_mobile_ads.dart';

// // class AdMobService {
// //   static String? get bannerAdUnitId {
// //     if (Platform.isAndroid) {
// //       return 'ca-app-pub-3940256099942544/6300978111';
// //     } 
// //     // else if (Platform.isIOS) {
// //       // return 'ca-app-pub-3940256099942544/2934735716';
// //     // } 
// //     else {
// //       throw new UnsupportedError('Unsupported platform');
// //     }
// //   }

//   // static String? get interstitialAdUnitId {
//   //   if (Platform.isAndroid) {
//   //     return 'ca-app-pub-3940256099942544/1033173712';
//   //   } 
//   //   // else if (Platform.isIOS) {
//   //     // return 'ca-app-pub-3940256099942544/4411468910';
//   //   // } 
//   //   else {
//   //     throw new UnsupportedError('Unsupported platform');
//   //   }
//   // }

//   // static String? get rewardedAdUnitId {
//   //   if (Platform.isAndroid) {
//   //     return 'ca-app-pub-3940256099942544/5224354917';
//   //   } 
//   //   // else if (Platform.isIOS) {
//   //     // return 'ca-app-pub-3940256099942544/1712485313';
//   //   // } 
//   //   else {
//   //     throw new UnsupportedError('Unsupported platform');
//   //   }
//   // }

//   static final BannerAdListener bannerListener = BannerAdListener(
//     onAdLoaded: (ad) => print('Ad loaded.'),
//     onAdFailedToLoad: (ad, error) {
//       ad.dispose();
//       print('Ad failed to load: $error');
//     },
//     onAdOpened: (ad) => print('Ad opened.'),
//     onAdClosed: (ad) => print('Ad closed.'),
//   );
// }