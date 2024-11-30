import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'denox_method_channel.dart';

abstract class DenoxPlatform extends PlatformInterface {
  /// Constructs a DenoxPlatform.
  DenoxPlatform() : super(token: _token);

  static final Object _token = Object();

  static DenoxPlatform _instance = MethodChannelDenox();

  /// The default instance of [DenoxPlatform] to use.
  ///
  /// Defaults to [MethodChannelDenox].
  static DenoxPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [DenoxPlatform] when
  /// they register themselves.
  static set instance(DenoxPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
