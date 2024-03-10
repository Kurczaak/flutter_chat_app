import 'dart:io';

import 'package:flutter/foundation.dart';

abstract class PlatformUtil {
  static PlatformType get platform {
    if (kIsWeb) {
      return PlatformType.web;
    }
    if (Platform.isAndroid) {
      return PlatformType.android;
    }
    if (Platform.isIOS) {
      return PlatformType.ios;
    }
    throw UnimplementedError('Platform not supported');
  }
}

enum PlatformType {
  android,
  ios,
  web,
}
