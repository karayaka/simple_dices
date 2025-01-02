import 'dart:io';

class AdHelper {
  static String get homeBannerAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-1229600046040111/2368106099";
      //return "ca-app-pub-3940256099942544/6300978111"; //test
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }

  static String get diceBannerAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-1229600046040111/3974763432";
      //return "ca-app-pub-3940256099942544/6300978111"; //test
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }
}
