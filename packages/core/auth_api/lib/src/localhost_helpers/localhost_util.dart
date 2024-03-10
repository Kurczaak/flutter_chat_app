import 'package:auth_api/src/localhost_helpers/platform_util.dart';

/// Utility class to get the localhost URL based on the platform.
/// This is for debug purposes only.
/// Make sure to adjust the iOS url based on your IP address.
abstract class LocalhostUtil {
  static String get baseUrl {
    final platform = PlatformUtil.platform;
    return switch (platform) {
      PlatformType.android => 'http://10.0.2.2',
      PlatformType.ios => 'http://192.168.0.2',
      PlatformType.web => 'http://localhost',
    };
  }
}
