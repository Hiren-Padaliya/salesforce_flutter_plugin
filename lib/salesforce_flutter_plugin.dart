
import 'salesforce_flutter_plugin_platform_interface.dart';

class SalesforceFlutterPlugin {
  Future<String?> getPlatformVersion() {
    return SalesforceFlutterPluginPlatform.instance.getPlatformVersion();
  }
}
