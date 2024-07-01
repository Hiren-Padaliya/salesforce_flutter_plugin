import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'salesforce_flutter_plugin_method_channel.dart';

abstract class SalesforceFlutterPluginPlatform extends PlatformInterface {
  /// Constructs a SalesforceFlutterPluginPlatform.
  SalesforceFlutterPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static SalesforceFlutterPluginPlatform _instance = MethodChannelSalesforceFlutterPlugin();

  /// The default instance of [SalesforceFlutterPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelSalesforceFlutterPlugin].
  static SalesforceFlutterPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SalesforceFlutterPluginPlatform] when
  /// they register themselves.
  static set instance(SalesforceFlutterPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
