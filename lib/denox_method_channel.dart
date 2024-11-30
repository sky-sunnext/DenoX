import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'denox_platform_interface.dart';

/// An implementation of [DenoxPlatform] that uses method channels.
class MethodChannelDenox extends DenoxPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('denox');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
