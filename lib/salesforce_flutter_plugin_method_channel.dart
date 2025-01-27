import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'salesforce_flutter_plugin_platform_interface.dart';

/// An implementation of [SalesforceFlutterPluginPlatform] that uses method channels.
class MethodChannelSalesforceFlutterPlugin extends SalesforceFlutterPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('salesforce_flutter_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
