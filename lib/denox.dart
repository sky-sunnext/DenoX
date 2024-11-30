import 'denox_platform_interface.dart';

class Denox {
  Future<String?> getPlatformVersion() {
    return DenoxPlatform.instance.getPlatformVersion();
  }
}
