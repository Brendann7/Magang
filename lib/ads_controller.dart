import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class MyController extends GetxController{
  NativeAd? nativeAd;
  RxBool isAdLoaded = false.obs;
  final String adUnitId = "ca-app-pub-7218127940872558/6823600703";

  loadAd(){
    nativeAd = NativeAd(
    adUnitId: adUnitId, 
    listener: NativeAdListener(
      onAdLoaded: (ad){
        isAdLoaded.value = true;
      },
      onAdFailedToLoad: (ad, error) {
        isAdLoaded.value = false;
      },
    ),
    request: const AdRequest(),
    nativeTemplateStyle: NativeTemplateStyle(templateType: TemplateType.small));
  nativeAd!.load();
  }

  @override
  void dispose(){
    nativeAd?.dispose();
    super.dispose();
  }
}