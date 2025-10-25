import 'package:package_info_plus/package_info_plus.dart';

class AppPackageInfo {
  static String? currentAppVersion;
  static Future<void> getAppPackageInfo() async {
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  currentAppVersion = null;
  currentAppVersion = packageInfo.version;
  }
  static get appVersion => currentAppVersion ?? '';
}