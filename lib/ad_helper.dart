import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdHelper {

  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-7218127940872558/4724777329';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-7218127940872558/8277009528';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-7218127940872558/5443704889';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-7218127940872558/6540383886';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-7218127940872558/1316757610';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-7218127940872558/2250603323';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get rewardedInterstitialAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-7218127940872558/1041463432';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-7218127940872558/6760655988';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get openAppAdUnitId {
    if (Platform.isAndroid) {
      return 'ca-app-pub-7218127940872558/6693137569';
    } else if (Platform.isIOS) {
      return 'ca-app-pub-7218127940872558/8979593397';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
  
  static final BannerAdListener bannerListener = BannerAdListener(
    onAdLoaded: (ad) => debugPrint('Ad Loaded.'),
    onAdFailedToLoad: (ad, error) {
      ad.dispose();
      debugPrint('Ad failed to load: $error');
    },
    onAdOpened: (ad) => debugPrint('Ad Opened'),
    onAdClosed: (ad) => debugPrint('Ad Closed')
  );
}